switch(room)
{
	case rm_criacao:
		// MENU DRAW
		// centering texts
		var gui_width = display_get_gui_width();
		var gui_height = display_get_gui_height();
		var x_center = gui_width/2;
		var y_center = gui_height/3;

		// text's properties
		draw_set_font(ft_menu);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		
		
		// draw texts
		if (global.created == false)
		{
			for(var i = 11; i < array_length(global.options); i++)
			{
				// hover
				if (global.index != i)
				{
					draw_set_color(c_white);
				}
				else
				{
					draw_set_color(c_red);
				}
			
				if (i == 11)
				{
					y_center -= 150;
				}
				else
				{
					y_center = gui_height/3;
				}
			
				switch(i)
				{
					case 12:
						scr_HorizontalValueChange(12, x_center, 150, y_center, i-11, string(att[i-12]));
					break;
				
					case 13:
						scr_HorizontalValueChange(13, x_center, 150, y_center, i-11, string(att[i-12]));
					break;
				
					case 14:
						scr_HorizontalValueChange(14, x_center, 150, y_center, i-11, string(att[i-12]));
					break;
				
					case 15:
						scr_HorizontalValueChange(15, x_center, 150, y_center, i-11, string(att[i-12]));
					break;
				}
			
				draw_text(x_center, y_center + 55 * (i-11), global.options[i]);
			}
		
			switch(global.index)
			{
				case 12:
					scr_rightaddleftsub(global.keys[1], global.keys[3], 0);
				break;
			
				case 13:
					scr_rightaddleftsub(global.keys[1], global.keys[3], 1);
				break;
				
				case 14:
					scr_rightaddleftsub(global.keys[1], global.keys[3], 2);
				break;
				
				case 15:
					scr_rightaddleftsub(global.keys[1], global.keys[3], 3);
				break;
			}
			}
		break;
}