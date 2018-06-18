/*********************************************************************
Module defines functions used for Reading Analogue In
*********************************************************************/
#define NUM_ANA_READS 4

typedef struct
{
	int current_chan :5;
	int current_scan:3;
}str_ana_state;

int current_analogue_val[NUM_ANALOGUE_IN_CHANS];

int16 current_analogue_bit0;
int16 current_analogue_bit1;

str_ana_state current_ana_state; // make a global so we don't use up the RAM and increase speed

void ReadAnalogueIn(short produce_output);
int16 ScaleAnalogValue (int channel, int16 value);


#inline
int16 ReadStoredAna () 
{
	int16 ret = 0;

 	ret = current_analogue_val [current_ana_state.current_chan];
	ret <<= 2;
	if (bit_test (current_analogue_bit1, current_ana_state.current_chan))
	{
		bit_set(ret, 1);
	}

	if (bit_test (current_analogue_bit0, current_ana_state.current_chan))
	{
		bit_set(ret, 0);
	}

	return ret;
}

#inline
void WriteStoredAna (int16 value)
{
	if (bit_test(value, 0))
	{
		bit_set (current_analogue_bit0, current_ana_state.current_chan);
	}
	else
	{
		bit_clear (current_analogue_bit0, current_ana_state.current_chan);
	}

	if (bit_test(value, 1))
	{
		bit_set (current_analogue_bit1, current_ana_state.current_chan);
	}
	else
	{
		bit_clear (current_analogue_bit1, current_ana_state.current_chan);
	}

	value >>=2;
	current_analogue_val [current_ana_state.current_chan] = (int) value;
}

// initialise the previous analogue in values
// Sets RA0, RA1 and RA3 as analogue inputs
// Sets the B1 to B3 as Outputs
#USE FAST_IO(B)

#define CLEAR_BANK_MASK 0b11110001 // ANDing Mask will clear bits 1-3
void InitialiseAnalogueIn()
{
	int i;

	setup_adc (ADC_CLOCK_INTERNAL);
	setup_adc_ports (RA0_RA1_ANALOG_RA3_REF);
	current_ana_state.current_chan = 0;
	set_tris_b (CLEAR_BANK_MASK);

	current_analogue_bit0 = 0;
	current_analogue_bit1 = 0;

 	for (i = 0; i < NUM_ANALOGUE_IN_CHANS; i++)
	{
		current_analogue_val[i] = 0;
	}
	
}

// reads the analogue in and produces output if different
short ProcessAnalogueIn()
{
	return ReadAnalogueIn (true);
}


void SetAnaChannel()
{
	int bank_num;

	bank_num = current_ana_state.current_chan / 8;

	output_bit (PIN_B1, bit_test(current_ana_state.current_chan, 0));
	output_bit (PIN_B2, bit_test(current_ana_state.current_chan, 1));
	output_bit (PIN_B3, bit_test(current_ana_state.current_chan, 2));
	delay_us (AD_SWITCH_DELAY);

	set_adc_channel (bank_num);
	delay_us (AD_READ_DELAY);

}

#inline
int16 ReadAnaValue()
{
	int16 ret = 0;
	
	ret = read_adc();

	return ret;
}

// if produce_output is true, the result will be sent to the output 
// if different from previous value
// Must make a call to SetAnaChannel First
short ReadAnalogueIn(short produce_output)
{
  short ret = false;
	

	int16 adc_val, last_output;
	int ana_reads;
	int16 accum_store = 0; // use this as an accumulator to condition the value

	ana_reads = NUM_ANA_READS;	
	restart_wdt();
	
	while (ana_reads)
	{	
#ifdef IOCARD_BUILD
		if (MessageWaiting())
		{
			ret = ProcessPlaInputStream(); 
		}
		
#endif
		adc_val = ReadAnaValue();
		
		accum_store += adc_val;
		ana_reads--;
	} //end while ana_reads
	
	accum_store /= NUM_ANA_READS;
	
	adc_val = accum_store;
	
	adc_val = ScaleAnalogValue (current_ana_state.current_chan, adc_val);
	
	
	// see if this read and last matched
	
	last_output = ReadStoredAna();
	
	if (InQueueEmpty()) //InQueueEmpty()
	{
		if (produce_output && last_output != adc_val)
		{
			if (OutputAnalog (current_ana_state.current_chan, adc_val))
			{
				// move data up to smooth	
				WriteStoredAna (adc_val);
				ret = true;
			}
		}
		else
		{
			WriteStoredAna (adc_val);
		}
	}
	return ret;
}








