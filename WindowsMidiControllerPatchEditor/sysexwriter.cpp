//---------------------------------------------------------------------------
#include "midioutputdriver.h"
#include "sysexwriter.h"
#include "mididrv.h"


SysexWriter::SysexWriter ()
{}

SysexWriter::~SysexWriter()
{
}

unsigned SysexWriter::EncodeSysex (const byte* source_buf, unsigned source_len, byte* dest_buf, unsigned dest_len)
{
	int sysex_size;
  int sysex_buf_index;
  unsigned ret;

  sysex_size = CalculateMidiTxBufferSize ((byte*)source_buf, source_len) + 2;// add start and stop

  // See if we have enough Space
  if (dest_len < sysex_size)
  {
    return 0;
  }

  sysex_buf_index = 0;
  dest_buf [sysex_buf_index] = 0xf0;

  sysex_buf_index++;

  for (unsigned i = 0; i < source_len; i++)
  {
    byte tx_byte = source_buf [i];
    byte control_char = EncodeMidiByte (&tx_byte);

    if (control_char)
    {
      dest_buf [sysex_buf_index] = control_char;
      sysex_buf_index++;
    }

    dest_buf [sysex_buf_index] = tx_byte;
    sysex_buf_index++;

   }

  dest_buf [sysex_buf_index] = 0xf7;
  sysex_buf_index++;

  if (sysex_buf_index != sysex_size)
  {
    printf ("Sysex Calculated and encoded sizes do not Match\r\n");
    ret = 0;
  }
  else
  {
    ret = sysex_size;
  }

  return ret;

}

bool SysexWriter::WriteSysexData (unsigned midi_device, const byte* buf, unsigned buflen)
{
  bool ret = false;
	int sysex_size;
  int sysex_buf_index;


  //sysex_size = CalculateMidiTxBufferSize ((byte*)buf, buflen) + 2;// add start and stop

  sysex_buf_index = 0;
  _sysexbuf [sysex_buf_index] = 0xf0;

  MidiOutputDriver::TransmitMidiMessageByte (0xf0, 0, midi_device);

  sysex_buf_index++;

  for (unsigned i = 0; i < buflen; i++)
  	{
    byte tx_byte = buf [i];
    byte control_char = EncodeMidiByte (&tx_byte);

    if (control_char)
    	{
      MidiOutputDriver::TransmitMidiMessageByte (control_char, 0, midi_device);
      }

    MidiOutputDriver::TransmitMidiMessageByte (tx_byte, 0, midi_device);
    }

  MidiOutputDriver::TransmitMidiMessageByte(0xf7, 0, midi_device);

  return ret;
}   // end WriteSysexData

//---------------------------------------------------------------------------
#pragma package(smart_init)
