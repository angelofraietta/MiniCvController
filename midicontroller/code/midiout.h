/**************************************************************
 * Author: Angelo Fraietta
 * Description: Midi output interface
 *************************************************************/

// forward declarations
void ProcessMidiInputStream();
short MidiOutFree();
void SetLastStatusChan(byte);
int ReadAnaResolution();

#inline
void OutputMidi (str_midiconfig* midi_msg)
{
	int num_bytes;
	byte* msg_ptr;
	int i;
  short midi_out_2;

  midi_out_2 = (midi_msg->config_flag & MIDI_OUTPUT2_MASK) && !(midi_msg->config_flag & VALUE_SCALING_FLAG);
  
  
	num_bytes = NumTxBytes (midi_msg);
	msg_ptr = (byte*) midi_msg;

	// make sure that there is no merge happening
	while (!MidiOutFree())
	{
		ProcessMidiInputStream();
	}
	
	// store the last status that we are sending
	SetLastStatusChan (msg_ptr[0]);
	
	for (i = 0; i < num_bytes; i++)
	{
		if (midi_out_2)
		{
			WriteOutData2 (msg_ptr [i]); 
		}
		
		else
		{
			WriteOutData (msg_ptr [i]); 
		}
	}
	
	
}

#inline
short OutputHigResAna(int16 value, str_midiconfig &midi_msg)
{
	int lsb, lsb_num;

	if (midi_msg.config_flag & HIGH_RES_DUAL_CHAN)
	{
		
		lsb = value & 0x07; // hold lower 3 bits
		
		// no need to caluclate the MSB controller number as it is already in data_1
		lsb_num = midi_msg.data_2;
		
		// first tx MSB
		value >>= 3;
		
		midi_msg.data_2 = value & 0x7F;
		
		OutputMidi (&midi_msg);
		
		// now TX lsb
		midi_msg.data_1 = lsb_num;
		midi_msg.data_2 = lsb;
		OutputMidi (&midi_msg);
	}
	
	else
	{
		midi_msg.data_1 = value & 0x07; // hold lower 3 bits
		value >>= 3;
		
		midi_msg.data_2 = value & 0x7F; // data 2 holds MSB in 7 bit
		OutputMidi (&midi_msg);
	}
	
}

int16 CalculateScaledAnalogue(str_midiconfig &midi_msg, int16 value)
{
	int32 out;
	int16 range;
	int16 min_value, max_value;
	int int_val;

	// we cannot do comparisons with non int

	// first store the value
	out = value / 8;

	int_val = (int)out;

	if (int_val >= (midi_msg.data_2 & 0x7F))
	{
		return 127; 
	}

	if ((midi_msg.config_flag & 0x7F) >= int_val)
	{
		return 0; 
	}

	// move upper and Lower to 10 Bit
	min_value = (midi_msg.config_flag & 0x7F);
	min_value <<=3;

	max_value = (midi_msg.data_2 & 0x7F);
	max_value <<= 3;


	range = max_value - min_value;

	out = value - min_value;
	out *= 127;
	out /= range;

	if (out > 127)
	{
		out = 127;
	}

	return out;

}

int16 ScaleAnalogValue (int channel, int16 value)
{
	str_midiconfig midi_msg;

	int i;

	ReadAnalogueInConfig (&midi_msg, channel);
	if (midi_msg.config_flag & VALUE_SCALING_FLAG)
	{
		return CalculateScaledAnalogue (midi_msg, value);
	}	
	else
	{
		if (midi_msg.config_flag & HIGH_RES_DUAL_CHAN)
		{ 
			return value;
		}
		else
		{
			i = ReadAnaResolution();
			while (i)
			{
				i--;
				bit_clear (value, i);
			}
		}
	}
	return value;

}


short OutputScaledAnalog (str_midiconfig &midi_msg, int value)
{
	
	int num_bytes;
	
	num_bytes = NumTxBytes (&midi_msg);
	
	switch (num_bytes)
	{
	case 3:
		midi_msg.data_2 = value & 0x7F;
		break;
		
	case 2:
		
		midi_msg.data_1 = value & 0x7F;
		break;
		
	default:
	}
	
	OutputMidi (&midi_msg);
	
}

#inline
short OutputAnalog (int channel, int16 value)
{
  int num_bytes;
  
	str_midiconfig midi_msg;

	ReadAnalogueInConfig (&midi_msg, channel);

	if (midi_msg.config_flag & VALUE_SCALING_FLAG)
	{
		return OutputScaledAnalog (midi_msg, (int)value);
	}

  if (!(MUTE_CONFIG_MASK  & midi_msg.config_flag))
	{
		if (INVERT_VALUE_MASK & midi_msg.config_flag)
		{
			value ^= 0xFFFF; // flip all
		}
		
		num_bytes = NumTxBytes (&midi_msg);
		
		switch (num_bytes)
		{
		case 3:
			if (ReadAnaResolution())
			{
				if (DATA_1_VARY_MASK & midi_msg.config_flag)
				{
					value >>= 3; // make 7 bit
					midi_msg.data_1 = value & 0x7F;
				}
				else
				{
					value >>= 3; // make 7 bit
					midi_msg.data_2 = value & 0x7F;
				}
			}
			else
			{
				return OutputHigResAna (value, midi_msg);
			}
			
			break;
			
		case 2:
			value >>= 3; // make 7 bit
			midi_msg.data_1 = value & 0x7F;
			break;
			
		default:
		}
		
		OutputMidi (&midi_msg);
	}
  return true;
}

#inline
short OutputDigital (int channel, int value)
{
  int num_bytes;
	str_midiconfig midi_msg;
	
	ReadDigitalInConfig (&midi_msg, channel);
	
  if (!(MUTE_CONFIG_MASK  & midi_msg.config_flag))
	{
    num_bytes = NumTxBytes (&midi_msg);
		
		if (INVERT_VALUE_MASK & midi_msg.config_flag)
		{
			value ^= 0x7f; // flip all but msb
		}
		
		switch (num_bytes)
		{
		case 3:
			if (DATA_1_VARY_MASK & midi_msg.config_flag)
			{
				midi_msg.data_1 = value;
			}
			else
			{
				midi_msg.data_2 = value;
			}
			
			break;
			
		case 2:
			midi_msg.data_1 = value;
			break;
			
		default:
		}
		
		
		OutputMidi (&midi_msg);
	}
  return true;
}























