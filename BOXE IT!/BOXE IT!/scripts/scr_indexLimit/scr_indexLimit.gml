function scr_indexLimit(value1, value2)
{
	if (global.index < value1)
		{
			global.index = value1;
		}

	if (global.index > value2)
	{
		global.index = value2;
	}
}