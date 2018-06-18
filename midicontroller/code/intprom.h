
byte extprom_int_index = 0; // internal EEprom Index

void InitialiseEEprom()
{
	extprom_int_index = 0;
}

// return true if more data, false if back at zero
#inline
short ReadIntEEprom(byte* ret_data)
{
	*ret_data = ReadConfigByte (extprom_int_index);
	extprom_int_index++;
	return (extprom_int_index);
}

#inline
void WriteIntEEprom(byte data)
{
	WriteConfigByte (extprom_int_index++, data);
}



