function scr_rightaddleftsubAtt(right, left, i)
{
	if (keyboard_check_pressed(right))
	{
		if (global.attTotal > 0)
		{
			obj_player.att[i] += 1;
			global.attTotal -= 1;
		}
	}
	else
	{
		if (keyboard_check_pressed(left))
		{
			if (obj_player.att[i] > 0)
			{
				obj_player.att[i] -= 1;
				global.attTotal += 1;
			}
		}
	}
}