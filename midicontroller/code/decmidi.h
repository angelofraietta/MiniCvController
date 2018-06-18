/**********************************************************************
 * decodes midi message and produces an output if we are configured to
 *
 *dependant uponf midicfg.h,  
 *********************************************************************/

void GenerateAnalogueOutput (int out_num, byte val);
void GenerateDigitalOutput (int out_num, byte val);

int ana_values [NUM_ANALOGUE_OUT];

#inline
short MatchingConfig (str_midiconfig* test, str_midiconfig* reference)
{
  short ret;
  byte match_only_status;

  ret = (test->status_chan == reference->status_chan);

	if (!ret) return ret;

	if (HIGH_RES_DUAL_CHAN  & reference->config_flag)
	{
		ret = (test->data_1 == reference->data_1) || (test->data_1 == reference->data_2) ;
	}
	else
	{
  	ret = !(MUTE_CONFIG_MASK  & reference->config_flag);

  
 	 	match_only_status = (DATA_1_VARY_MASK & reference->config_flag) || ((reference->status_chan) == PITCHBEND_MASK);
  
  	if (!match_only_status)
    {
    	ret = ret	&& (test->data_1 == reference->data_1);
    }
	} //if (HIGH_RES_DUAL_CHAN  & reference->config_flag)

  return ret;
}

void WriteHighResAnaOut(int channel, str_midiconfig* message, str_midiconfig* reference)
{
	int outval;

	if (message->data_1 == reference->data_1) // Data 1 is MSB
	{
		outval = message->data_2;
		ana_values[channel] = outval<<1;
	}

	if (message->data_1 == reference->data_2) // Data 2 is LSB and generates output
	{
		outval = ana_values[channel];

		if (message->data_2)
		{
			outval++; 
		}
 
		GenerateAnalogueOutput (channel, outval); 
	}

	
}

// test all analogs and digitals for a match
void DecodeMidiMessage (str_midiconfig* test_msg)
{
	str_midiconfig config;
	int i;
  byte outval;

  outval = test_msg->data_2 <<1;
 
	for (i = 0; i < NUM_ANALOGUE_OUT; i++)
	{
#ifndef _SIMULATE
		ReadAnalogueOutConfig (&config, i);
#else
		GetDefaultAnalogueOut (&config, i);
#endif
		if (MatchingConfig (test_msg, &config))
		{
			if (HIGH_RES_DUAL_CHAN  & config.config_flag)
			{
				WriteHighResAnaOut(i, test_msg, &config);
				return;
			}
			
			if (test_msg->status_chan == PITCHBEND_MASK)
			{
				if (test_msg->data_1)
				{
					outval++; // add LSB
				} 
			}
			else
			{
				if (DATA_1_VARY_MASK & config.config_flag)
				{
					outval = test_msg->data_1<<1;  
				}
			}
			
			if (INVERT_VALUE_MASK & config.config_flag)
			{
				outval ^= 0xFf; // flip all 
				if (test_msg->status_chan != PITCHBEND_MASK)
				{
					if (outval == 1) // we flipped the LSB. We want zero to be zero
					{
						outval = 0;
					}
				}
			}
			
			GenerateAnalogueOutput (i, outval); 
			
		}
	}
	
	for (i = 0; i < NUM_DIGITAL_OUT; i++)
	{
#ifndef _SIMULATE
		ReadDigitalOutConfig (&config, i);
#else
		GetDefaultDigitalOut (&config, i);
#endif		
		if ( MatchingConfig (test_msg, &config))
		{
			if (DATA_1_VARY_MASK & config.config_flag)
			{
				outval = test_msg->data_1;  
			}
			
			if (INVERT_VALUE_MASK & config.config_flag)
			{
				outval ^= 0x7f; // flip all but msb
			}
			
			
			GenerateDigitalOutput (i, outval);
		}
	}
	
}

