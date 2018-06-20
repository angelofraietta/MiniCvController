#include <stdio.h>
#include <memory.h>



#include "iodata.h"
#include "configmsg.h"
#include "sysexcommands.h"
#include "midicfg.h"
#include "procmidi.h"
#include "sysexwriter.h"
#include "midioutputdriver.h"
#include "htmsocket.h"


#include "mididrv.h"
#include "equeue.h"

#ifdef WIN32
#include <windows>
#endif

using sm_str::e_static_queue;

const char* logfile = "log.txt";
//FILE* outfile;

static void* out_socket;

static volatile bool writing_config = false;
#include "midiinputunit.h"

#define SETTINGS_FILENAME  "Settings.ini"
#define DEVICE_ID_INDEX 3 // his is the index in the sysex header that defines the Device Number

#define UDP_OUT_PORT 1113

#include "sysex.h"

#define CONFIG_SIZE 256
static byte current_device_num = ANY_DEVICE_ID_NUM;

byte config_data [CONFIG_SIZE];

byte reference_data [CONFIG_SIZE]; // this is a reference which we will use to see if our config has changed

const byte WriteCfgHeader [] = {SYSEX_ID, BASIC_MIDI_CONTROLLER, ANY_DEVICE_ID_NUM, WRITE_CONGFIG_BYTE};
const byte FactoryDefaultCfgHeader [] = {SYSEX_ID, BASIC_MIDI_CONTROLLER, ANY_DEVICE_ID_NUM, FACTORY_DEFAULT};
const byte ReadCfgHeader [] = {SYSEX_ID, BASIC_MIDI_CONTROLLER, ANY_DEVICE_ID_NUM, READ_CONFIG_BYTE};

SysexWriter* aMidiOut;
MidiInDriver* pMidiIn;
MidiOutputDriver* midi_out;

volatile bool in_sysex; // flag determining whether we are in a sysex
volatile unsigned byte_num;

volatile unsigned bytes_written;

volatile bool cancel_write;
unsigned out_device_num, in_device_num;

void ProcessMidiByte (unsigned char midi_data);

MidiData rx_midi_message;
e_static_queue <MidiData> midi_in_messages (CONFIG_SIZE);


bool SendDataToUDP (const unsigned char* buf, unsigned buf_len)
{
  bool ret = false;

  if (out_socket)
  {
    // we need to encode Sysex here
    unsigned char dest_buf [1024];
    unsigned dest_bytes = aMidiOut->EncodeSysex (buf, buf_len, dest_buf, sizeof (dest_buf));

    if (dest_bytes)
    {
      ret =  SendHTMSocket (out_socket, dest_bytes, (void*)dest_buf );
    }
  }
  return ret;
}

bool SendMidiToUDP (const unsigned char* buf, unsigned buf_len)
{
  bool ret = false;

  if (out_socket)
  {
    if (buf_len)
    {
      ret =  SendHTMSocket (out_socket, buf_len, (void*)buf );
    }
  }
  return ret;

}

void CloseUDPSocket()
{
  if (out_socket)
  {
    CloseHTMSocket (out_socket);
    out_socket = 0;
  }

}

bool OpenUDPSocket (const char* target_address, unsigned port)
{
  bool ret = false;

  printf ("Open UDPSocket %u\r\n", port);
#ifdef WIN32
  static bool init = false;

	if (! init)
		{

			WORD wVersionRequested;
			WSADATA wsaData;

			wVersionRequested = MAKEWORD( 2, 2 );

			WSAStartup( wVersionRequested, &wsaData );
      init = true;
		}
#endif

  CloseUDPSocket();
  out_socket = OpenHTMSocket (target_address, port);

  return (out_socket);

}

bool   GetMidiData(MidiData* data)
{
  bool ret = !midi_in_messages.empty();
  if (ret)
  {
    data->status = midi_in_messages.top().status;
    data->data1 = midi_in_messages.top().data1;
    data->data2 = midi_in_messages.top().data2;
    midi_in_messages.pop();
  }
  return (ret);
}

void SetReferenceData()
{
  memcpy (reference_data, config_data, CONFIG_SIZE);
}

 bool ConfigChanged()
{
  return memcmp(reference_data, config_data, CONFIG_SIZE);
}

unsigned GetBytesWritten()
{
  return  bytes_written;
}

void WriteConfigByte(int index, byte value)
{
  if (index < CONFIG_SIZE)
  {
    config_data[index] = value;
  }
}


byte ReadConfigByte (int index)
{
  byte ret = 0x00;

  if (index < CONFIG_SIZE)
  {
    ret = config_data[index];
  }

  return ret;

}


void InitialisePatchEditor ()
{
  pMidiIn  = new MidiInDriver (ProcessMidiByte, 1024);
  midi_out  = MidiOutputDriver::create (1024);
  aMidiOut = new SysexWriter;
  in_sysex = false;

  SetFactoryDefault();
  ValidateStoredConfig();
  SetReferenceData();
  pMidiIn->start();

//  outfile = fopen(logfile, "w");
}

void DeInitialisePatchEditor()
{
    pMidiIn->close();
    delete pMidiIn;
    delete aMidiOut;

    if (midi_out)
      {
      delete midi_out;
      midi_out = NULL;
      }


//      fclose(outfile);
}


bool WriteConfigChannelData (const STR_CONFIG &config_msg)
{
  byte configMessage [sizeof(WriteCfgHeader) + sizeof(STR_CONFIG)];
  memcpy (configMessage, WriteCfgHeader, sizeof(WriteCfgHeader));

  // set the device number to ours
//  configMessage[DEVICE_ID_INDEX] = current_device_num;

  // Now fill config data
  memcpy (configMessage + sizeof(WriteCfgHeader), &config_msg, sizeof (config_msg));

  aMidiOut->WriteSysexData (out_device_num, configMessage, sizeof(WriteCfgHeader) + sizeof(STR_CONFIG));
  if (!SendDataToUDP (configMessage, sizeof(WriteCfgHeader) + sizeof(STR_CONFIG)))
  {
    printf ("Unable to Send To UDP\r\n");
  }

  return true;
}

bool SendFactoryDefault()
{
  SetFactoryDefault();
  SetReferenceData();
  ValidateStoredConfig();
  aMidiOut->WriteSysexData (out_device_num, FactoryDefaultCfgHeader, sizeof(FactoryDefaultCfgHeader));

  if (!SendDataToUDP (FactoryDefaultCfgHeader, sizeof(FactoryDefaultCfgHeader)))
  {
    printf ("Unable to Send To UDP\r\n");
  }

  return true;
}

bool SendMidiData(const MidiData& data)
{
  midi_out->TransmitMidiData(data);

  SendMidiToUDP ((const unsigned char*) &data, sizeof(MidiData));

  return true;
}

 bool SetOutputDevice(unsigned dev_num)
{
  out_device_num = dev_num;
  return midi_out->open(dev_num);
}

 bool SetIntputDevice(unsigned dev_num)
{
  bool ret = pMidiIn->open (dev_num);
  pMidiIn->start();
  return ret;
}

 bool SendReadConfig()
{
  writing_config = false;
  printf ("Request Config Data from device %u\r\n", current_device_num);
//  fprintf (outfile, "Request Config Data from device %u\r\n", current_device_num);

  byte read_params [2];
  byte configMessage [sizeof(ReadCfgHeader) + sizeof(read_params)];

  read_params[0] = 0; // start at index 0
  read_params[1] = 255; // end index

  memcpy (configMessage, ReadCfgHeader, sizeof(ReadCfgHeader));

  // set the device number to ours
//  configMessage[DEVICE_ID_INDEX] = current_device_num;

  // Now fill config data

  memcpy (configMessage + sizeof(ReadCfgHeader), read_params, sizeof (read_params));

  aMidiOut->WriteSysexData (out_device_num, configMessage, sizeof(configMessage));

  if (!SendDataToUDP (configMessage, sizeof(configMessage)))
  {
    printf ("Unable to Send To UDP\r\n");
  }

  return true;
}

 bool WriteNextConfigByte()
{
  bool ret = false;

  if (!cancel_write && bytes_written < CONFIG_SIZE)
    {

      byte configMessage [sizeof(WriteCfgHeader) + sizeof(STR_CONFIG)];
      STR_CONFIG config_msg;


      //SendStatus->Position = bytes_written;
      config_msg.index = (byte)(bytes_written);
      config_msg.status = ReadConfigByte (bytes_written++);
      config_msg.data1 =  ReadConfigByte (bytes_written++);
      config_msg.data2 = ReadConfigByte (bytes_written++);
      config_msg.data3 = ReadConfigByte (bytes_written++);


      memcpy (configMessage, WriteCfgHeader, sizeof(WriteCfgHeader));

      // set the device number to ours
//      configMessage[DEVICE_ID_INDEX] = current_device_num;
      printf ("Current device num %u\r\n", current_device_num);
      
      // Now fill config data
      memcpy (configMessage + sizeof(WriteCfgHeader), &config_msg, sizeof (config_msg));

      aMidiOut->WriteSysexData (out_device_num, configMessage, sizeof(WriteCfgHeader) + sizeof(STR_CONFIG));

      if (!SendDataToUDP (configMessage, sizeof(WriteCfgHeader) + sizeof(STR_CONFIG)))
      {
        printf ("Unable to Send To UDP\r\n");
      }

      printf ("Wrote next_config %d bytes\r\n", bytes_written);
//      fprintf (outfile,  "Wrote next_config %d bytes\r\n", bytes_written);
      ret = true;
    }

    return ret;
}

void ProcessMidiByte (unsigned char midi_data)
{
  if (midi_data & STATUS_BYTE_MASK) // this is a status byte
  {
    byte_num = 0;

    byte status_nibble = (byte) (midi_data & STATUS_NIBBLE_MASK);

    if (status_nibble == SYSTEM_MSG_VAL) // then this is system message
    {
      ProcessSystemMessage (midi_data);
      ValidateStoredConfig();

      if (midi_data == SYSTEM_BLUEWAVE)
      {
        //printf ("Bluewave Data\r\n");
        midi_status.bytes_left = 2;
        rx_midi_message.status = midi_data;
      }
      else
      {
        //printf ("ProcessSystemMessage\r\n");
      }

    }
    else //not if (status_nibble == SYSTEM_MSG_VAL)
    {
      midi_status.in_sysex = 0; // clear in sysex flag
      midi_status.current_msg.status_chan = midi_data;

      midi_status.bytes_left = (byte) (MidiUtilities::num_bytes (midi_data) -1);
      // store the last status that we have transmitted
      midi_status.last_status_chan = midi_data;

      midi_status.byte_num = 0;
      //printf ("\r\nMidi In %u ", midi_data);
      rx_midi_message.status = midi_data;
    } //if (status_nibble == SYSTEM_MSG_VAL)

  } // Not Status Byte
  else
  {
    if (midi_status.in_sysex)
    {
      if (midi_status.our_sysex)
      {
      if (DecodeMidiByte (&midi_status.control_char, &midi_data))
        {
        midi_status.our_sysex = (DecodeSysexByte (midi_data));

        if(!midi_status.our_sysex)
          {
          printf ("Not Our Sysex %02X\r\n", midi_data);
          } //if(!midi_status.our_sysex)
        } //if (DecodeMidiByte (&midi_status.control_char, &midi_data))
      }//if (midi_status.our_sysex)
    }
    else //// not in sysex
    {
      byte_num++;
      switch (byte_num)
      {
        case 0:
          //printf ("\r\nMidi In %u ", midi_data);
          rx_midi_message.status = midi_data;
          midi_status.bytes_left = (byte) (MidiUtilities::num_bytes (midi_data) -1);
          break;

        case 1:
          //printf ("Data 1 %u ", midi_data);
          rx_midi_message.data1 = midi_data;
          midi_status.bytes_left--;
          break;

        case 2:
          //printf ("Data 2 %u ", midi_data);
          rx_midi_message.data2 = midi_data;
          midi_status.bytes_left--;
          break;
      } // end switch

      if (!midi_status.bytes_left)
      {
        //printf ("Message Complete\r\n");
        if (!midi_in_messages.push(rx_midi_message))
        {
          printf ("Overflow\r\n");
        } //midi_in_messages.push

      } //if (!midi_status.bytes_left
    } // not in_sysex
  } // not status byte

}

bool LoadConfig (const char* filename)
{
  bool ret = false;

  FILE* infile = fopen(filename, "r+b");

  if (infile)
  {
    ret = (fread(config_data, 1, CONFIG_SIZE, infile));

    fclose(infile);

  }
  return ret;

}

 bool SaveConfig (const char* filename)
{
  bool ret = false;

  FILE* outfile = fopen(filename, "w+b");

  if (outfile)
  {
    ret = (fwrite(config_data, 1, CONFIG_SIZE, outfile));

    fclose(outfile);
  }

  return ret;
}

bool CancelWrite()
{
  cancel_write = true;
  bytes_written = 0;
  writing_config = false;
  return true;
}

void ProcessAcknowledge()
{
  printf ("Process Accknowledge\r\n");
//  fprintf (outfile, "Process Accknowledge\r\n");

  if (writing_config)
  {
    WriteNextConfigByte();
  }
}

unsigned GetNumMidiInDevices()
{
  return MidiInputDriver::NumDevices ();
}

unsigned GetNumMidiOutDevices()
{
  return MidiOutputDriver::NumDevices ();
}

bool GetMidiInputName (unsigned device_index, char* ret_buf, unsigned buf_len)
{
  return MidiInputDriver::GetDeviceName (device_index, ret_buf, buf_len);
}

bool GetMidiOutputName (unsigned device_index, char* ret_buf, unsigned buf_len)
{
  return MidiOutputDriver::GetDeviceName (device_index, ret_buf, buf_len);
}

void SendConfig()
{
  cancel_write = false;
  bytes_written = 0;
  writing_config = true;
  printf ("SendConfig\r\n");
//  fprintf (outfile, "Send Config\r\n");
  WriteNextConfigByte();
}

void SetSimDigitalOutput (unsigned channel, bool value)
{
}

void SetSimAnalogueOutput (unsigned channel, unsigned value)
{

}

bool SetCurrentDeviceNumber(unsigned device_num)
{
  bool ret = false;

  if (device_num < 256)
  {
//    current_device_num = (char)device_num;
//    WriteConfigByte(DEVICE_ID_ADDRESS, current_device_num);
    ret = true;
  }

  return ret;
}

unsigned GetCurrentDeviceNum()
{
  return current_device_num;
}

bool SendDeviceId(unsigned device_number)
{
  bool ret = false;
  return false;

  if (!cancel_write)
  {
    byte configMessage [sizeof(WriteCfgHeader) + 2];
    memcpy (configMessage, WriteCfgHeader, sizeof(WriteCfgHeader));

    // send our target device
    //configMessage[DEVICE_ID_INDEX] = (byte)current_device_num;

    // now set the index in the config
    configMessage[sizeof(WriteCfgHeader)] = DEVICE_ID_ADDRESS;

    printf("Set Device ID %u %u\r\n", DEVICE_ID_ADDRESS, device_number);
    // set the device num
    configMessage[sizeof(WriteCfgHeader) +1] = device_number;
    aMidiOut->WriteSysexData (out_device_num, configMessage, sizeof(configMessage));

    if (!SendDataToUDP (configMessage, sizeof(configMessage)))
    {
      printf ("Unable to Send To UDP\r\n");
    }

    SetCurrentDeviceNumber (device_number);
    ret = true;
    }

  return ret;

}
