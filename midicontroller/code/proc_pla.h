/********************************************************************
Process Pla Messages
********************************************************************/

//#define DISPLAY_SLOW
//#define SLOW_DELAY 85
//#define DIAG_COUNT
//#define DIAG_MIDI

// flag indicating that our transmitted data has been received by the 386
str_PLA_Data last_tx_data;

// count the number of actual data bytes transmitted and received
int num_tx_data_bytes = 0; 
int num_rx_data_bytes = 0;
short re_transmit_required = false; // this means that transmitted messages are out of sync
short proc_pla_eeprom_read = false;
short proc_pla_eeprom_write = false;
short proc_pla_int_eeprom = false;

#ifdef DIAG_COUNT
byte diag_flags = 0, diag_data = 0;
#endif


#inline
short RequestEEProm()
{
	return proc_pla_eeprom_read || proc_pla_eeprom_write;
}


#inline 
void ResendLastMessage()
{
  midi_tx = false;
  pla_out_data.flags = prev_pla_out.flags;
  pla_out_data.data = prev_pla_out.data;          
  Pla_Send_data();
}

#inline 
void RequestNumRxBytes()
{
  midi_tx = false;
  pla_out_data.flags = DIAG_DIAG_MESSAGE_FLAG;
  pla_out_data.data = DIAG_REQUEST_RX_BYTES;          
  Pla_Send_data();
}

#inline 
void RequestNumTxBytes()
{
  midi_tx = false;
  pla_out_data.flags = DIAG_DIAG_MESSAGE_FLAG;
  pla_out_data.data = DIAG_REQUEST_TX_BYTES;          
  Pla_Send_data();
}


short   GetNextPlaMessage () 
{
  short ret = false;
  midi_tx = false;
  pla_out_data.flags = DIAG_DIAG_MESSAGE_FLAG;
  pla_out_data.data = DIAG_ETX;
	
  if (re_transmit_required)
	{
		pla_out_data.flags = last_tx_data.flags;
    pla_out_data.data = last_tx_data.data;          
    ret = true;
  }
  else if (!InQueueEmpty())
	{
    restart_wdt();
		pla_out_data.data = GetInChar();
		
    if (pla_out_data.data != 0xff)
    {
      midi_tx = true;
    }

    pla_out_data.flags = MIDI_CHAN_1_DATA;
    
    ret = true;
  }
  else
	{
		if (proc_pla_int_eeprom)
		{
			proc_pla_int_eeprom = ReadIntEEprom (&pla_out_data.data);
			pla_out_data.flags = INT_EEPROM_DATA;
			ret = true;
		}

		if (!ret && !PlaOutQueueEmpty())
    {
      GetPlaQueue();
      ret = true;
    }
  }
	
  last_tx_data.flags = pla_out_data.flags;
  last_tx_data.data = pla_out_data.data;
	
  if (ret && (!re_transmit_required))
  {
    num_tx_data_bytes++;
  }

  re_transmit_required = false;
  return ret;
	
} // end GetNextMessage

#inline 
void ProcessIOData (int flags, int data)
{
	switch (flags)
	{
	case IO_FLAGS:
		watchdog_blink_type = (data);
		watchdog_flash_count = 0;
		break;
		
	default:
		break;
	}
}

#inline
void ProcessEEpromData (int flags, int data)
{
	//disable_interrupts(GLOBAL);

	switch(flags)
	{
	case EEPROM_DATA:
		//WriteEEProm (data);
		break;
		
	case EEPROM_END_WRITE:
		//FinishEEpromWrite();
		break;
		
	case EEPROM_INIT_ADDRESS:
		InitialiseEEprom();
		break;
		
	case EEPROM_BLOCK_READ:
		//proc_pla_eeprom_read = true;
		break;
		
	case EEPROM_START_WRITE:
		//proc_pla_eeprom_write = true;
		break;
		
	case EEPROM_START:
		enable_analogs = false;
		break;
		
	case EEPROM_END:
		enable_analogs = true;
		proc_pla_eeprom_write = false;
		proc_pla_eeprom_read = false;
		break;
		
	case INT_EEPROM_READ:
		proc_pla_int_eeprom = true;
		break;
		
	case INT_EEPROM_DATA:
		WriteIntEEprom (data);
		break;
		
	case EEPROM_REBOOT:
		if (proc_pla_eeprom_write || proc_pla_eeprom_read || !enable_analogs)
		{
			// reboot
			while (1);
		}
		
	default:
		break;
	}
	
	//enable_interrupts(GLOBAL);
} //ProcessEEpromData

void ProcessOutputData (int flags, int data)
{
  int channel;
  int data_type;
	
  channel = flags & 0x0f;
  
  data_type = flags & 0x70;
	
  switch (data_type)
	{
	case DIGITAL_DATA:
		if (enable_analogs)
		{
			GenerateDigitalOutput (channel, data);
		}
		break;
		
	case MIDI_CHAN_1_DATA:
		if (enable_analogs)
		{
			WriteOutData (data);
		}
		break;
		
	case MIDI_CHAN_2_DATA:
		if (enable_analogs)
		{
			WriteOutData2 (data);
		}
		break;
		
	case ANALOG_DATA:
		if (enable_analogs)
		{
			GenerateAnalogueOutput (channel, data);
			//ExtEEpromScheduleRestart();
		}
		
		break;
		
	case EEPROM_DATA:
		ProcessEEpromData (flags, data);
		break;
	case IO_FLAGS:
		ProcessIOData  (flags, data);
		break;
		
	default:
		//output_high(IO_INTERUPT_OUT_PIN3); // set for debugging
		break;
	}
}



// returns true if the Pla is in a state that a transmission can take place
short PlaOutFree()
{
  return (InQueueEmpty () && PlaTxReady() && !MessageWaiting());
}



// check for input data
// if there is data
#inline
void ProcessPlaInputMessage()
{
	int rx_data; 
	
	output_low(IO_INTERUPT_OUT_DATA); // PREPARE THE iNTERRUPT PIN
	output_low(IO_INTERUPT_OUT_MIDI); // PREPARE THE iNTERRUPT PIN
	
#ifdef DISPLAY_SLOW
	delay_us(SLOW_DELAY);
#endif
	
	Pla_read_data();
	
	if ( pla_in_data.flags == DIAG_DIAG_MESSAGE_FLAG)
	{
		if (watchdog_blink_type == IO_NOT_STARTED)
		{
			watchdog_blink_type = IO_NO_PATCH;
		}

		switch (pla_in_data.data)
			{
			case DIAG_NO_DATA: // we have lost sync here 												
			case DIAG_ETX: // make first as it is most likely
				awaiting_response = false;
				
				// see if we have anything to send
				if (GetNextPlaMessage())
				{
					SavePlaMessage();
					Pla_Send_data ();
				}
				
				break;
				
			case DIAG_RECEIVE_RESPONSE: // we must respond
				// there is no real point in setting transmitted_data_received as we are about to reset it again
				
				GetNextPlaMessage();
				SavePlaMessage();
				
				
				Pla_Send_data ();
				break;
				
			case DIAG_RESET:
				InitialiseDigitalOut();
				while (1); // watchdog out
				break;
				
			case DIAG_INVALID_RX_DATA: // They received rubbish from us
				
				RequestNumRxBytes();
				break;
				
			case DIAG_SYNC_MESSAGE_READY:
				// get a count to see if theye got our last message
				RequestNumRxBytes();            
				break;
				
			case DIAG_ASYNC_MESSAGE_READY:
				// we will have to check whether we are waiting for a response from us
				if (awaiting_response) // we have a conflict here. 
				{
					delay_ms(3); //wait and see if we get a response to the message we sent them
					
					// this can only be the case if we are expecting one, because this case only
					// occurs as an unsolicited response
					if (MessageWaiting())  // clear it and get them to send it again in synch with us
					{
						InitialisePlaIn();
					}
					
					RequestNumRxBytes();
				}
				else
				{
					GetNextPlaMessage();
					SavePlaMessage();
					Pla_Send_data ();            
				}
				
				break;
				
			default:
				rx_data = pla_in_data.data & DIAG_TEST_RETURN_BYTES_MASK;
				
				switch (rx_data)
					{
					case DIAG_RETURN_RX_BYTES:
						if ((pla_in_data.data & DIAG_RETURN_BYTES_MASK) 
								!= (num_tx_data_bytes & DIAG_RETURN_BYTES_MASK))
						{	
							if((last_tx_data.flags == DIAG_DIAG_MESSAGE_FLAG)
								 && (last_tx_data.data == DIAG_ETX))
 							{
								// our last message was an ETX. 
								//We will have to synchronise ourselves with the pic
								
								num_tx_data_bytes = pla_in_data.data;
								re_transmit_required = false;
							}
							else
							{
								re_transmit_required = true;
							}
							
						}
						else
						{
							re_transmit_required = false;
						}
						
						// see how many they transmitted
						RequestNumTxBytes();
						
						// do this for now as we are debugging
						//GetNextPlaMessage();
						//SavePlaMessage();
						
						//Pla_Send_data ();								
						break;
						
					case DIAG_RETURN_TX_BYTES:
						if ((pla_in_data.data & DIAG_RETURN_BYTES_MASK) 
								!= (num_rx_data_bytes & DIAG_RETURN_BYTES_MASK))
						{
							midi_tx = false;
							pla_out_data.flags = DIAG_DIAG_MESSAGE_FLAG;
							pla_out_data.data = (byte) DIAG_RE_TRANSMIT_LAST_MESSAGE;
							
							// write that message back. Pla will no longer be free
							Pla_Send_data (); 
						}
						else
						{
							GetNextPlaMessage();
							SavePlaMessage();
							
							Pla_Send_data ();
						}
						
					default:
						break;
					}
				
				break;
			} // end diag message case
		
		
	}
	else // not a diag message
	{
		// we have to respond
		GetNextPlaMessage();
		SavePlaMessage();
		Pla_Send_data (); 
		
		
		// we need to process the message if the Tx flag is Clear, indicating data
		if (!(pla_in_data.flags & TX_DATA_FLAG))
		{
			ProcessOutputData (pla_in_data.flags, pla_in_data.data);
			num_rx_data_bytes++;
		}
		
	}
	
  
} // end ProcessPlaInputMessage


// read message. 
// if Midi input is available, read it and send it
// if there was no midi, read the output queue and send it if available
// return true if a response to PLA is required
short ProcessPlaInputStream()
{
	short ret = false;
	
  while (MessageWaiting())
  {
		restart_wdt();
		ProcessPlaInputMessage();
		ret = true;
	}

	
  if (PlaTxReady() && !awaiting_response)
  {
		restart_wdt();

		if (GetNextPlaMessage ())
		{
			output_low(IO_INTERUPT_OUT_DATA); // PREPARE THE iNTERRUPT PIN
			output_low(IO_INTERUPT_OUT_MIDI); // PREPARE THE iNTERRUPT PIN
			
			SavePlaMessage();
			Pla_Send_data ();
			ret = true;
		}
		
  }
  
	return ret;
} // end ProcessPlaInputStream

