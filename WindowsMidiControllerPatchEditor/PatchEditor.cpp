//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "configmsg.h"
#include "wrapperunit.h"
#include "sysexcommands.h"
#include "midiflags.h"
#include "midicfg.h"



#include "PatchEditor.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TMidiController *MidiController;
//---------------------------------------------------------------------------
__fastcall TMidiController::TMidiController(TComponent* Owner)
  : TForm(Owner)
{
    //load the combo boxes
    for(unsigned i = 1; i <= 16; i++)
        ConfigChannel->Items->Add(IntToStr(i));//ad midi channels


    //load values in the channel box
    for (unsigned i = 0; i <= 127; i++)
        {
        ConfigData1->Items->Add(IntToStr(i));
        ConfigData2->Items->Add(IntToStr(i));
        }

    for (unsigned i = 1; i <=16; i++)
    {
      String PortName = String ("CV Input") + IntToStr(i);
      ConfigPort->Items->Add (PortName);
    }

    for (unsigned i = 1; i <=16; i++)
    {
      String PortName = String ("Switch Input") + IntToStr(i);
      ConfigPort->Items->Add (PortName);
    }

    for (unsigned i = 1; i <= 8; i++)
    {
      String PortName = String ("Analogue Output") + IntToStr(i);
      ConfigPort->Items->Add (PortName);
    }

    for (unsigned i = 1; i <=8; i++)
    {
      String PortName = String ("Digital Output") + IntToStr(i);
      ConfigPort->Items->Add (PortName);
    }

    ConfigStatus->ItemIndex = 1;
    ConfigChannel->ItemIndex = 0;
    ConfigData1->ItemIndex = 1;
    ConfigData2->ItemIndex = 0;
    ConfigPort->ItemIndex = 0;

}
//---------------------------------------------------------------------------
void __fastcall TMidiController::WriteConfigButtonClick(TObject *Sender)
{
  STR_CONFIG config_msg;
  unsigned Status = (ConfigStatus->ItemIndex + 8) * 0x10;
  unsigned Channel = ConfigChannel->ItemIndex;


  config_msg.index = (byte)((ConfigPort->ItemIndex * CONFIG_SPACE) + MIDI_CONFIG_START_ADDRESS);
  config_msg.status = (byte) (Status + Channel);
  config_msg.data1 =  (byte) (ConfigData1->ItemIndex);
  config_msg.data2 = (byte)(ConfigData2->ItemIndex);
  config_msg.data3 = 0x00;

  if (Data1Vary->Checked)
    {
    config_msg.data3 |= DATA_1_VARY_MASK;
    }

  if (MuteCheck->Checked)
    {
    config_msg.data3 |= MUTE_CONFIG_MASK;
    }

  if (InvertCheck->Checked)
    {
    config_msg.data3 |= INVERT_VALUE_MASK;
    }

  if (MidiOut2->Checked)
    {
    config_msg.data3 |= MIDI_OUTPUT2_MASK;
    }

  if (GenerateInitialCheck->Checked)
    {
    config_msg.data3 |= PRESET_VALUE_FLAG;
    }

   TestWrapperForm->EnableButtons (false); 
   TestWrapperForm->WriteConfigChannel (config_msg);
}
//---------------------------------------------------------------------------


void TMidiController::UpdateConfig()
{
  str_midiconfig config;

  ReadMidiConfig (&config, (byte)(ConfigPort->ItemIndex));

  int index = config.status_chan / 16 - 8;
  ConfigStatus->ItemIndex = index;


  ConfigChannel->ItemIndex = config.status_chan & 0x0f;

  ConfigData1->ItemIndex = config.data_1;

  ConfigData2->ItemIndex = config.data_2;

  Data1Vary->Checked = config.config_flag & DATA_1_VARY_MASK;
  Data2Vary->Checked = !Data1Vary->Checked;

  MuteCheck->Checked= config.config_flag & MUTE_CONFIG_MASK;

  InvertCheck->Checked = config.config_flag & INVERT_VALUE_MASK;

  MidiOut2->Checked = config.config_flag & MIDI_OUTPUT2_MASK;

  GenerateInitialCheck->Checked = config.config_flag & PRESET_VALUE_FLAG;

    //TODO: Add your source code here
}
void __fastcall TMidiController::ConfigPortChange(TObject *Sender)
{
  MidiOut2->Enabled =  ConfigPort->ItemIndex < MIDI_CONFIG_START_ADDRESS;
  UpdateConfig();
}
//---------------------------------------------------------------------------
void __fastcall TMidiController::ConfigStatusChange(TObject *Sender)
{
  switch ((StatusIndex)(ConfigStatus->ItemIndex))
    {
    case eProgramChange:
    case eChannelPressure:
      Data1Vary->Checked = true;
      Data2Vary->Enabled = false;
      break;

    default:
      Data2Vary->Enabled = true;
      Data2Vary->Checked = true;
    }
  ConfigChannelChange(Sender);
}
//---------------------------------------------------------------------------
void __fastcall TMidiController::ConfigChannelChange(TObject *Sender)
{
  // copy all values to RAM
  STR_CONFIG config_msg;
  unsigned Status = (ConfigStatus->ItemIndex + 8) * 0x10;
  unsigned Channel = ConfigChannel->ItemIndex;


  config_msg.index = (byte)((ConfigPort->ItemIndex * CONFIG_SPACE) + MIDI_CONFIG_START_ADDRESS);
  config_msg.status = (byte) (Status + Channel);
  config_msg.data1 =  (byte) (ConfigData1->ItemIndex);
  config_msg.data2 = (byte)(ConfigData2->ItemIndex);
  config_msg.data3 = 0x00;

  if (Data1Vary->Checked)
    {
    config_msg.data3 |= DATA_1_VARY_MASK;
    }

  if (MuteCheck->Checked)
    {
    config_msg.data3 |= MUTE_CONFIG_MASK;
    }

  if (InvertCheck->Checked)
    {
    config_msg.data3 |= INVERT_VALUE_MASK;
    }

  if (MidiOut2->Checked)
    {
    config_msg.data3 |= MIDI_OUTPUT2_MASK;
    }

  if (GenerateInitialCheck->Checked)
    {
    config_msg.data3 |= PRESET_VALUE_FLAG;
    }

  // store the values to our RAM
  WriteConfigByte (config_msg.index++, config_msg.status);
  WriteConfigByte (config_msg.index++, config_msg.data1);
  WriteConfigByte (config_msg.index++, config_msg.data2);
  WriteConfigByte (config_msg.index++, config_msg.data3);

  // now update
  TestWrapperForm->UpdateConfig();

}
//---------------------------------------------------------------------------

void __fastcall TMidiController::FormShow(TObject *Sender)
{
  UpdateConfig();  
}
//---------------------------------------------------------------------------


void TMidiController::EnableButtons(bool enable)
{
    //TODO: Add your source code here
  WriteConfigButton->Enabled = enable;
}

