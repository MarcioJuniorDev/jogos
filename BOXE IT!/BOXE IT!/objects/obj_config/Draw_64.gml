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
		y_center = gui_height/3;
		// text's properties
		draw_set_font(ft_menu);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		// drawning texts
		for (var i = 4; i < array_length(options); i++)
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
				if (index == 4)
				{
					draw_text(x_center + string_width(options[i]) * 2, y_center + 55 * (i-4), "<   " + lang + "   >");
				}
				else
				{
					draw_text(x_center + string_width(options[i]) * 2, y_center + 55 * (i-4), lang);
				}
			}
			
			if (i == 5)
			{
			    var tx = x_center + string_width(options[4]) * 2;
			    var ty = y_center + 55 * (i-4);
				
				if (key_change == true && index == 5)
				{				
					var txt = "";
					var tw = string_width(txt);
					var th = string_height(txt);
					draw_text(tx, ty, txt);
					draw_line(tx - 5, ty + th, tx - 12 + tw, ty + th);
					
					if (keyboard_check_pressed(vk_anykey))
					{
						if (!scr_keyUsed(array_length(keys)))
						{
							keys[0] = keyboard_lastkey;
							key_change = false;
						}
					}
				}
				else
				{		
					var txt = scr_keyToString(keys[0]);
					draw_text(tx, ty, txt);
				}
			}
			
			if (i == 6)
			{
			    var tx = x_center + string_width(options[4]) * 2;
			    var ty = y_center + 55 * (i-4);
				
				if (key_change == true && index == 6)
				{				
					var txt = "";
					var tw = string_width(txt);
					var th = string_height(txt);
					draw_text(tx, ty, txt);
					draw_line(tx - 5, ty + th, tx - 12 + tw, ty + th);
					
					if (keyboard_check_pressed(vk_anykey))
					{
						if (!scr_keyUsed(array_length(keys)))
						{
							keys[1] = keyboard_lastkey;
							key_change = false;
						}
					}
				}
				else
				{			
					var txt = scr_keyToString(keys[1]);
					draw_text(tx, ty, txt);
					
				}
			}
			
			if (i == 7)
			{
			    var tx = x_center + string_width(options[4]) * 2;
			    var ty = y_center + 55 * (i-4);
				
				if (key_change == true && index == 7)
				{				
					var txt = "";
					var tw = string_width(txt);
					var th = string_height(txt);
					draw_text(tx, ty, txt);
					draw_line(tx - 5, ty + th, tx - 12 + tw, ty + th);
					
					if (keyboard_check_pressed(vk_anykey))
					{
						if (!scr_keyUsed(array_length(keys)))
						{
							keys[2] = keyboard_lastkey;
							key_change = false;
						}
					}
				}
				else
				{			
					var txt = scr_keyToString(keys[2]);
					draw_text(tx, ty, txt);
				}
			}
			
			if (i == 8)
			{
			    var tx = x_center + string_width(options[4]) * 2;
			    var ty = y_center + 55 * (i-4);
				
				if (key_change == true && index == 8)
				{				
					var txt = "";
					var tw = string_width(txt);
					var th = string_height(txt);
					draw_text(tx, ty, txt);
					draw_line(tx - 5, ty + th, tx - 12 + tw, ty + th);
					
					if (keyboard_check_pressed(vk_anykey))
					{
						if (!scr_keyUsed(array_length(keys)))
						{
							keys[3] = keyboard_lastkey;
							key_change = false;
						}
					}
				}
				else
				{			
					var txt = scr_keyToString(keys[3]);
					draw_text(tx, ty, txt);
				}
			}
			
			if (i == 9)
			{
			    var tx = x_center + string_width(options[4]) * 2;
			    var ty = y_center + 55 * (i-4);
				
				if (key_change == true && index == 9)
				{				
					var txt = "";
					var tw = string_width(txt);
					var th = string_height(txt);
					draw_text(tx, ty, txt);
					draw_line(tx - 5, ty + th, tx - 12 + tw, ty + th);
					
					if (keyboard_check_pressed(vk_anykey))
					{
						if (!scr_keyUsed(array_length(keys)))
						{
							keys[4] = keyboard_lastkey;
							key_change = false;
						}
					}
				}
				else
				{			
					var txt = scr_keyToString(keys[4]);
					draw_text(tx, ty, txt);
				}
			}
		}
		scr_resetFont()
	break;
}