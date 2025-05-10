switch(room)
{
	// menu
	case rm_menu:
		
		// menu draw
		if (mouse_x > play[1] && mouse_x < play[1]+play[3] && mouse_y > play[2] && mouse_y < play[2]+play[4])
		{
			play[5] = true;
			draw_set_colour(c_red);
		}
		else
		{
			play[5] = false;
			draw_set_colour(c_white);
		}
		
		draw_text(play[1], play[2], play[0]);
}