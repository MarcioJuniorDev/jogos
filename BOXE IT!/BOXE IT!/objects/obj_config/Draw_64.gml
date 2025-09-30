switch(room)
{
	case rm_menu:
		// MENU DRAW
		// centering texts
		var gui_width = display_get_gui_width();
		var gui_height = display_get_gui_height();
		var x_center = gui_width/2;
		var y_center = gui_height/2;

		// text's properties
		draw_set_font(ft_menu);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		// drawning texts
		for (var i = 0; i < 4; i++)
		{
			// hover
			if (index != i)
			{
				draw_set_color(c_white);
			}
			else
			{
				draw_set_color(c_red);
			}

			draw_text(x_center, y_center + 55 * i, options[i]);
		}
		// reset text's properties
		scr_resetFont();
	break;
	
	case rm_config:
		// SETTINGS DRAW
		// centering texts
		gui_width = display_get_gui_width();
		gui_height = display_get_gui_height();
		x_center = gui_width/2;
		y_center = gui_height/2;
		// text's properties
		draw_set_font(ft_menu);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		// drawning texts
		for (var i = 4; i < 6; i++)
		{
			// hover
			if (index != i)
			{
				draw_set_color(c_white);
			}
			else
			{
				draw_set_color(c_red);
			}

			draw_text(x_center, y_center + 55 * (i-4), options[i]);
			if (i == 4)
			{
				draw_text(x_center + string_width(options[i]) * 2, y_center + 55 * (i-4), lang);
			}
		}
		scr_resetFont();
	break;
}