//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include <windows.h>
#include <mmsystem.h>

#include "iodata.h"
#include "configmsg.h"
#include "sysexcommands.h"
#include "midicfg.h"
#include "wrapperunit.h"
#include "midicontrollerlibrary.h"
#include <fstream.h>

#include "iodata.h"

#include "about.h"
#include "PatchEditor.h"

#define SETTINGS_FILENAME  "Settings.ini"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"

//byte Write_cfg_sysex_msg [] = {0x7D, 0x00, 0xff, 0x01, 0x00, 0x04, 0x05, 0x03, 0x04};

TTestWrapperForm *TestWrapperForm;
//---------------------------------------------------------------------------
__fastcall TTestWrapperForm::TTestWrapperForm(TComponent* Owner)
    : TForm(Owner)
{
    InitialisePatchEditor ();

    //first load the input devices combo box
    for (WORD i = 0; i < (WORD)midiInGetNumDevs(); i++)
        {
        MIDIINCAPS caps;
        bool Valid = (midiInGetDevCaps (i, (LPMIDIINCAPS)(&caps), sizeof(caps)) == MMSYSERR_NOERROR);

        if (Valid)
            InputDevicesBox->Items->Add(caps.szPname);
        }

    //now load the output devices box
    for (WORD i = 0; i < (WORD)midiOutGetNumDevs(); i++)
        {
        MIDIOUTCAPS caps;
        bool Valid = (midiOutGetDevCaps (i, (LPMIDIOUTCAPS)&caps, sizeof(MIDIOUTCAPS)) ==MMSYSERR_NOERROR);
        if (Valid)
            {

            //aMidiOut.push_back(new SysexWriter);
            OutputDevicesBox->Items->Add(caps.szPname);
            }
        }
    if (!ReadSettings())
    {
      //set the index int the combo boxes
      if (InputDevicesBox->Items->Count > 0)
          InputDevicesBox->ItemIndex = 0;
      if (OutputDevicesBox->Items->Count > 0)
          OutputDevicesBox->ItemIndex = 0;
    }
    
    if (!SetOutputDevice(OutputDevicesBox->ItemIndex))
    {
      Application->MessageBox ("Cannot open Output Device", OutputDevicesBox->Text.c_str(), IDOK	);
      OutputDevicesBox->ItemIndex = -1;
    }

    if (!SetIntputDevice( InputDevicesBox->ItemIndex))
    {
      Application->MessageBox ("Cannot open Input Device", OutputDevicesBox->Text.c_str(), IDOK	);
      InputDevicesBox->ItemIndex = -1;
    }

    UpdateConfig();
}
//---------------------------------------------------------------------------


void TTestWrapperForm::UpdateDisplay (unsigned char midi_data)
{
#if 0
  if (midi_data & STATUS_BYTE_MASK) // this is a status byte
  {
    byte_num = 0;

    byte status_nibble = (byte) (midi_data & STATUS_NIBBLE_MASK);

    if (status_nibble == SYSTEM_MSG_VAL) // then this is system message
      {
        ProcessSystemMessage (midi_data);
        ValidateStoredConfig();
        UpdateConfig();
      }
    else
      {
        midi_status.in_sysex = 0; // clear in sysex flag
        midi_status.current_msg.status_chan = midi_data;

        midi_status.bytes_left = (byte) (MidiUtilities::num_bytes (midi_data) -1);
        // store the last status that we have transmitted
        midi_status.last_status_chan = midi_data;

        midi_status.byte_num = 0;
        StatusBox->ItemIndex = midi_data / 0x10 - 8;
        ChannelBox->ItemIndex = midi_data % 0x10;

      }

  }
  else
  {
    if (midi_status.in_sysex)
      {

        if (midi_status.our_sysex)
          {
          if (DecodeMidiByte (&midi_status.control_char, &midi_data))
            {
            midi_status.our_sysex = DecodeSysexByte (midi_data);
            }
          }
      }
    else
    {
      byte_num++;
      switch (byte_num)
      {
        case 0:
          StatusBox->ItemIndex = midi_data / 0x10 - 8;
          ChannelBox->ItemIndex = midi_data % 0x10;
          break;
        case 1:
          Data1Box->ItemIndex =   midi_data;
          break;

        case 2:
          Data2Box->ItemIndex =   midi_data;
          break;
      } // end switch
    }
  }
#endif
}
//---------------------------------------------------------------------------

void __fastcall TTestWrapperForm::FormCreate(TObject *Sender)
{
    //load the combo boxes
    for(unsigned i = 1; i <= 16; i++)
        ChannelBox->Items->Add(IntToStr(i));//ad midi channels


    //load values in the channel box
    for (unsigned i = 0; i <= 127; i++)
        {
        Data1Box->Items->Add(IntToStr(i));
        Data2Box->Items->Add(IntToStr(i));
        }


    //set the boxes to some initial values
    StatusBox->ItemIndex = 1; //set it to note on
    ChannelBox->ItemIndex = 0; //set it to channel 1
    Data1Box->ItemIndex = 60;
    Data2Box->ItemIndex = 60;

    SaveDialog1->Filter = OpenDialog1->Filter;
}
//---------------------------------------------------------------------------

void __fastcall TTestWrapperForm::FormCloseQuery(TObject *Sender,
      bool &CanClose)
{
  if (ConfigChanged())
  {
    SaveFileClick(Sender);
  }

    //make sure you close the devices before you close

    WriteSettings();
    DeInitialisePatchEditor();
}
//---------------------------------------------------------------------------



void TTestWrapperForm::WriteConfigChannel (STR_CONFIG config_msg)
{
  WriteConfigChannelData (config_msg, OutputDevicesBox->ItemIndex);
}

void __fastcall TTestWrapperForm::FactoryDefaultButtonClick(
      TObject *Sender)
{

  unsigned deviceNum = OutputDevicesBox->ItemIndex;
  //aMidiOut[deviceNum]->WriteSysexData (deviceNum, FactoryDefaultCfgHeader, sizeof(FactoryDefaultCfgHeader));
  SendFactoryDefault(deviceNum);
  Caption = AnsiString ("Factory default");
}
//---------------------------------------------------------------------------





void __fastcall TTestWrapperForm::StatusBoxChange(TObject *Sender)
{
  switch ((StatusIndex)(StatusBox->ItemIndex))
    {
    case eProgramChange:
    case eChannelPressure:
      Data2Box->Enabled = false;
      break;

    default:
      Data2Box->Enabled = true;
    }
}
//---------------------------------------------------------------------------

void __fastcall TTestWrapperForm::SendMidiButtonClick(TObject *Sender)
{
  //the status and the channel are in the same Byte
  //remeber that Item indexes start at zero
  MidiData midi_data;

  unsigned Status = (StatusBox->ItemIndex + 8) * 0x10;
  unsigned Channel = ChannelBox->ItemIndex;

  //join the two together
  Status = Status + Channel;

  midi_data.status = (char) Status;
  //now do the data
  midi_data.data1= (char) Data1Box->ItemIndex;
  midi_data.data2 = (char)Data2Box->ItemIndex;

  SendMidiData (midi_data);


}
//---------------------------------------------------------------------------



void __fastcall TTestWrapperForm::OutputDevicesBoxChange(TObject *Sender)
{
  if (!SetOutputDevice(OutputDevicesBox->ItemIndex))
    {
      Application->MessageBox ("Cannot open Output Device", OutputDevicesBox->Text.c_str(), IDOK	);
      OutputDevicesBox->ItemIndex = -1;
    }

}
//---------------------------------------------------------------------------

void __fastcall TTestWrapperForm::InputDevicesBoxChange(TObject *Sender)
{
    if (!SetIntputDevice( InputDevicesBox->ItemIndex))
    {
      Application->MessageBox ("Cannot open Input Device", OutputDevicesBox->Text.c_str(), IDOK	);
      InputDevicesBox->ItemIndex = -1;
    }
  
}
//---------------------------------------------------------------------------



void TTestWrapperForm::UpdateConfig()
{
  MergeBox->Checked = (ReadConfigByte(MIDI_MERGE_ADDRESS));

  for (int i = 0; i < MDIChildCount; i++)
  {
    TMidiController* pController = (TMidiController*)MDIChildren[i];
    pController->UpdateConfig();
  }

}

void __fastcall TTestWrapperForm::ReadConfigButtonClick(TObject *Sender)
{
  unsigned deviceNum = OutputDevicesBox->ItemIndex;

  //aMidiOut[deviceNum]->WriteSysexData (deviceNum, configMessage, sizeof(configMessage));
  SendReadConfig(deviceNum);
}
//---------------------------------------------------------------------------


bool TTestWrapperForm::ReadSettings()
{
  bool ret = false;
  ifstream infile (SETTINGS_FILENAME);
  if (infile)
  {
    int indevice, outdevice;
    infile>>outdevice>>indevice;
    infile.close();
    OutputDevicesBox->ItemIndex = outdevice;
    InputDevicesBox->ItemIndex = indevice;
    ret = true;
  }
  return ret;

    //TODO: Add your source code here
}


void TTestWrapperForm::WriteSettings()
{
  ofstream outfile (SETTINGS_FILENAME);
  if (outfile)
  {
    outfile<<OutputDevicesBox->ItemIndex<<endl;
    outfile<<InputDevicesBox->ItemIndex<<endl;
    outfile.close();
  }
    //TODO: Add your source code here
}

void ProcessAcknowledge()
{
  TestWrapperForm->WriteConfigBytes();
}

void TTestWrapperForm::WriteConfigBytes()
{
  if (!WriteNextConfigByte(OutputDevicesBox->ItemIndex))
  {
    EnableButtons (true);
  }

    //TODO: Add your source code here
}

void __fastcall TTestWrapperForm::WriteCompleteClick(TObject *Sender)
{
  //cancel_write = false;
  //bytes_written = 0;
  EnableButtons (false);
  WriteConfigBytes();
}
//---------------------------------------------------------------------------

void __fastcall TTestWrapperForm::MergeBoxClick(TObject *Sender)
{
  WriteConfigByte (MIDI_MERGE_ADDRESS, (byte)(MergeBox->Checked * 0xff));
}
//---------------------------------------------------------------------------

void __fastcall TTestWrapperForm::OpenFileClick(TObject *Sender)
{
  if (OpenDialog1->Execute())
  {
  LoadConfig(OpenDialog1->FileName.c_str());
  UpdateConfig();
  }

}
//---------------------------------------------------------------------------

void __fastcall TTestWrapperForm::SaveFileClick(TObject *Sender)
{
  if (SaveDialog1->Execute())
  {
    if (SaveConfig(SaveDialog1->FileName.c_str()))
    {
      Caption = ExtractFileName(SaveDialog1->FileName);
    }


  }
}
//---------------------------------------------------------------------------

void __fastcall TTestWrapperForm::TileMenuClick(TObject *Sender)
{
  TileMode = tbVertical;
	Tile();

}
//---------------------------------------------------------------------------

void __fastcall TTestWrapperForm::ArrangeClick(TObject *Sender)
{
  ArrangeIcons();
}
//---------------------------------------------------------------------------

void __fastcall TTestWrapperForm::AddDeviceClick(TObject *Sender)
{
  new TMidiController(this);
}
//---------------------------------------------------------------------------

void __fastcall TTestWrapperForm::CascadeMenuClick(TObject *Sender)
{
  Cascade();  
}
//---------------------------------------------------------------------------




void TTestWrapperForm::EnableButtons(bool enable)
{
    WriteConfigButton->Enabled = enable;
    ReadConfigButton->Enabled = enable;
    SendMidiButton->Enabled = enable;
    FactoryDefaultButton->Enabled = enable;

    SendStatus->Visible = !enable;
    CancelButton->Visible = !enable;

  for (int i = 0; i < MDIChildCount; i++)
  {
    TMidiController* pController = (TMidiController*)MDIChildren[i];
    pController->EnableButtons(enable);
  }

}

void __fastcall TTestWrapperForm::CancelButtonClick(TObject *Sender)
{
  CancelWrite();
  EnableButtons(true);
}
//---------------------------------------------------------------------------

void __fastcall TTestWrapperForm::ExitClick(TObject *Sender)
{
  Close();  
}
//---------------------------------------------------------------------------

void __fastcall TTestWrapperForm::AboutClick(TObject *Sender)
{
  AboutForm->ShowModal();
}
//---------------------------------------------------------------------------

