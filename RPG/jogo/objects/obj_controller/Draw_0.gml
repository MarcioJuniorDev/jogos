switch(room)
{
	case rm_menu:
		
		if (mouse_x > jogar[1] && mouse_x < jogar[1]+jogar[3] && mouse_y > jogar[2] && mouse_y < jogar[2]+jogar[4])
		{
			jogar[5] = true;
			draw_set_colour(c_red);
		}
		else
		{
			jogar[5] = false;
			draw_set_colour(c_white);
		}
		
		draw_text(jogar[1], jogar[2], jogar[0]);
}