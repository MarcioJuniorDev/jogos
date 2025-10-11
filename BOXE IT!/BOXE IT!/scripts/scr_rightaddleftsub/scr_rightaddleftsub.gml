function scr_rightaddleftsub(right, left, i)
{
	if (keyboard_check_pressed(right))
	{
		if (global.attTotal > 0)
		{
			att[i] += 1;
			global.attTotal -= 1;
		}
	}
	else
	{
		if (keyboard_check_pressed(left))
		{
			if (att[i] > 0)
			{
				att[i] -= 1;
				global.attTotal += 1;
			}
		}
	}
}