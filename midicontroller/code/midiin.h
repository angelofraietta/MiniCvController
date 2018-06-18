/*************************************************************
* Author: Angelo Fraietta
* Description Process the reception of Input and output using a 
* sixteen byte queue
* Dependancy : calls ProcessMidiIn
*************************************************************/
#byte PIR1 = 0x0C
#byte TXREG = 0x19

// define a  volatile flag that becomes true when a char is received
// and is reset by external program
short input_unlocked; 
short midi_in_sysex = false;


#define MAX_QUEUE (QUEUE_SIZE -1)

byte midi_queue_data [QUEUE_SIZE];

int  midi_head; // the size is important as we just make the value 
int  midi_tail; // cycle from 0x0 to QUEUE_SIZE by incrementing


short midi_overflow;

// return true if flag was set when we cleared it
#inline 
short ClearRxFlag()
{
	short ret;

	ret = input_unlocked;
	input_unlocked = 0;
	return ret;
}

#inline 
short InQueueEmpty()
{
  return midi_head == midi_tail;
}


#inline 
short InOverflow()
{
  return midi_overflow;
}

#inline 
short InQueueFull()
{
	short ret = false;
	if (midi_tail != midi_head)
	{
		if (!midi_head) // head is zero
		{
			ret = (midi_tail == MAX_QUEUE);
		}
		else
		{
			ret = (midi_head == midi_tail + 1);
		}
	}
	return ret;
}


#ifdef _USE_OUT_BUFFER
#inline 
short OutQueueFull()
{
	return (!out_queue.empty && out_queue.tail == out_queue.head);
}
#endif

#inline
void InitialiseQueue()
{
  midi_tail = 0; 
  midi_head = 0;
	midi_in_sysex = false;
}


void InitialiseInQueue()
{
  disable_interrupts (INT_RDA); // disable any Midi in 
	InitialiseQueue ();
	input_unlocked = true;
	midi_overflow = false;
  enable_interrupts (INT_RDA); // disable any Midi in  
}



// function called when adding function. Called by interrupt by input
#inline
void AddQueue (byte new_byte)
{
	midi_queue_data [midi_tail] = new_byte;
	if(midi_tail == MAX_QUEUE)
	{
	  midi_tail = 0;
	}
	else
	{
	  midi_tail++;
	}
}  

#inline 
byte GetQueue ()
{
  byte ret;
  ret = midi_queue_data [midi_head]; 
	if (midi_head == MAX_QUEUE)
	{
		midi_head = 0;
	}
	else
	{
		midi_head++;
	}
	
	return ret;
}

#inline
void ClearInQueueOverflow()
{
  midi_overflow = false;
}

#inline
void AddInQueue (byte new_byte)
{
  if (InQueueFull())
  {
    midi_overflow = true;
  }
  else
  {	
    AddQueue (new_byte);
  }
}

#int_rda
DataReceived()
{
  int midi_char;
  midi_char = getc();

	if (bit_test (midi_char, 7))
	{
		midi_in_sysex = (midi_char == 0xf0);
	}
	
  AddInQueue (midi_char);
}




#inline 
void WriteBlueTooth (byte out_byte)
{

  disable_interrupts(GLOBAL);
	#use rs232(baud=115200, xmit=BLUETOOTH_OUT_PIN, rcv=0, ERRORS) 

#ifndef _SIMULATE
	putc (out_byte);
#endif
#use rs232(baud=31250, xmit=MIDIOUT_1_PIN, rcv=MIDI_IN_PIN, ERRORS) 
  enable_interrupts(GLOBAL);


}

#inline 
void WriteOutData (byte out_byte)
{
#use rs232(baud=31250, xmit=MIDIOUT_1_PIN, rcv=MIDI_IN_PIN, ERRORS) 
#ifndef _SIMULATE
	putc (out_byte);
#endif

}

#inline
byte GetInChar()
{
  byte ret;
  
  disable_interrupts (INT_RDA); // disable any Midi in 

  ret = GetQueue ();
  
  enable_interrupts (INT_RDA); // re-enable Midi in 

  input_unlocked = true; // set flag

  return ret;
}





#inline 
void WriteOutData2 (byte out_byte)
{
#use rs232(baud=31250, xmit=MIDIOUT_2_PIN, rcv=MIDI_IN_PIN, ERRORS) 
  // we have to disable the interrupts here otherwise the data will become corrupted because it has no uart
  disable_interrupts(GLOBAL);
#ifndef _SIMULATE
	putc (out_byte);
#endif
  enable_interrupts(GLOBAL);
}







