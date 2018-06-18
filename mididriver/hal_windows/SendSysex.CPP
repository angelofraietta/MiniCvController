#include <windows.h>
#include <stdafx.h>
#include "midioutputdriver.h"
#include "midiinputdriver.h"
#include <iostream.h>
#include <conio.h>
#include <stdio.h>
#include "midiinputsync.h"


#include "equeue.h"

sm_str::e_static_queue <unsigned char> rxq (120);

#define BIG_SYSEX_BUF_SIZE 1024

const char SysexBuf[] = {0xf0, 0x7d, 0x01, 0x01, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x03,  0xF7};
char big_sysexBuf [BIG_SYSEX_BUF_SIZE];

void InitBigSysexBuf()
{
	big_sysexBuf [0] = 0xf0;

  for(unsigned i = 1; i < BIG_SYSEX_BUF_SIZE - 1; i++)
  {
   	big_sysexBuf [i] = 0;
  }

  big_sysexBuf [BIG_SYSEX_BUF_SIZE -1] =  0xF7;

}

class MidiInDriver:public MidiInputSync
{
	public:
  	MidiInDriver (int queue_size) : MidiInputSync (queue_size){}
    ~MidiInDriver() {Purge(); kill();}
    void processMidiInput();

};

void MidiInDriver::processMidiInput()
{
  IOData iodata;

  bool data_valid = ReadData(&iodata);

  while (data_valid)
  {
  	cout<<(unsigned)(iodata & 0xff)<<endl;
    //rxq.push((unsigned char) iodata & 0xff);

    data_valid = ReadData(&iodata);
  }


}

int main(int argc, char* argv[])
{

  if (argc < 2)
  {
    printf("Filename required\r\n");
  }
  else
  {
    const char* sysex_filename = argv[1];
    printf ("Sending %s\r\n", sysex_filename);

   MidiOutputDriver* pDriver = MidiOutputDriver::create (1024);

    if (pDriver->open(1))
    {

      FILE* fp;

      fp = fopen (sysex_filename, "r+b");

      if (fp)
      {
        BYTE read_buf [256];

        unsigned bytes_read = fread (read_buf, 1, 256, fp);

        while (bytes_read)
        {
          cout <<"TX "<<bytes_read<<endl;
          for (unsigned i = 0; i < bytes_read; i++)
          {
            BYTE b = read_buf[i];
            pDriver->TransmitMidiMessageByte (b ,0, 1);

          }

          bytes_read = fread (read_buf, 1, 256, fp);
        }

        fclose (fp);
      }
      else
      {
        printf ("Unable to open %s\r\n", sysex_filename);
      }
		}

    cout<<"press any key to finish"<<endl;
    Sleep (1000);
    getch();
    delete pDriver;
   }
   return 0;
}