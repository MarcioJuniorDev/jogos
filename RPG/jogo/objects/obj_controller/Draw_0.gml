  switch(room)
{
	// menu
	case rm_menu:
		
		// menu draw
		if (scrHover(play[1], play[2], play[3], play[4], play[5]))
		{
			play[6] = draw_set_colour(c_red);
		}
		else
		{
			play[6] = draw_set_colour(c_white);
		}
		
		draw_text(play[1], play[2], play[0]);
}