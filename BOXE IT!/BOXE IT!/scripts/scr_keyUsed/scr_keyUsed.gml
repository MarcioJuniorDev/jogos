function scr_keyUsed(size)
{
	var nReturn = 0;
	for(i = 0; i < size; i++)
	{
		if (keyboard_lastkey == global.keys[i])
		{
			nReturn += 1;
		}
	}
	
	if (nReturn == 0)
	{
		return false;
	}
	else
	{
		return true;
	}
}