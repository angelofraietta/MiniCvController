/*
 *  Copyright © 1997-2001 Metrowerks Corporation.  All Rights Reserved.
 *
 *  Questions and comments to:
 *       <mailto:support@metrowerks.com>
 *       <http://www.metrowerks.com/>
 */

#include <iostream.h>
#include "midioutputdriver.h"
#include "midiinputdriver.h"
#include "midiinputsync.h"

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
 
int main()
{
 
   MidiOutputDriver* pDriver = MidiOutputDriver::create (1024);
   MidiInDriver* pMidiIn = new MidiInDriver (1024);

   if (!pMidiIn->open(0))
   {
   	 cout<<"Unable to open Midi In"<<endl;
   }

   pMidiIn->start();


	
	cout << "Hello World, this is CodeWarrior!" << endl;
	
	return 0;
}