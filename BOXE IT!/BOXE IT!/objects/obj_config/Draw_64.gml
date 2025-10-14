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
			if (global.index != i)
			{
				draw_set_color(c_white);
			}
			else
			{
				draw_set_color(c_red);
			}
			
			// draw text
			draw_text(x_center, y_center + 55 * i, global.texts[i]);
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
		for (var i = 4; i < 11; i++)
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
			// draw text
			draw_text(x_center, y_center + 55 * (i-4), global.texts[i]);
			
			// draw the language acronym
			if (i == 4)
			{
				scr_HorizontalValueChange(4, x_center, string_width(global.texts[4]) * 2, y_center, 0, lang);
			}
			
			// draw key used for go up
			if (i == 5)
			{
			    var tx = x_center + string_width(global.texts[4]) * 2;
			    var ty = y_center + 55 * (i-4);
				
				if (keys_change[0] == true && global.index == 5)
				{				
					var txt = "";
					var tw = string_width(txt);
					var th = string_height(txt);
					draw_text(tx, ty, txt);
					draw_line(tx - 5, ty + th, tx - 12 + tw, ty + th);
					
					if (keyboard_check_pressed(vk_anykey))
					{
						if (!scr_keyUsed(array_length(global.keys)))
						{
							global.keys[0] = keyboard_lastkey;
							keys_change[0] = false;
						}
					}
				}
				else
				{		
					var txt = scr_keyToString(global.keys[0]);
					draw_text(tx, ty, txt);
					keys_change[0] = false;
				}
			}
			
			// draw key used for go right
			if (i == 6)
			{
			    var tx = x_center + string_width(global.texts[4]) * 2;
			    var ty = y_center + 55 * (i-4);
				
				if (keys_change[1] == true && global.index == 6)
				{				
					var txt = "";
					var tw = string_width(txt);
					var th = string_height(txt);
					draw_text(tx, ty, txt);
					draw_line(tx - 5, ty + th, tx - 12 + tw, ty + th);
					
					if (keyboard_check_pressed(vk_anykey))
					{
						if (!scr_keyUsed(array_length(global.keys)))
						{
							global.keys[1] = keyboard_lastkey;
							keys_change[1] = false;
						}
					}
				}
				else
				{			
					var txt = scr_keyToString(global.keys[1]);
					draw_text(tx, ty, txt);
					keys_change[1] = false;
				}
			}
			
			// draw key used for go down
			if (i == 7)
			{
			    var tx = x_center + string_width(global.texts[4]) * 2;
			    var ty = y_center + 55 * (i-4);
				
				if (keys_change[2] == true && global.index == 7)
				{				
					var txt = "";
					var tw = string_width(txt);
					var th = string_height(txt);
					draw_text(tx, ty, txt);
					draw_line(tx - 5, ty + th, tx - 12 + tw, ty + th);
					
					if (keyboard_check_pressed(vk_anykey))
					{
						if (!scr_keyUsed(array_length(global.keys)))
						{
							global.keys[2] = keyboard_lastkey;
							keys_change[2] = false;
						}
					}
				}
				else
				{			
					var txt = scr_keyToString(global.keys[2]);
					draw_text(tx, ty, txt);
					keys_change[2] = false;
				}
			}
			
			// draw key used for go left
			if (i == 8)
			{
			    var tx = x_center + string_width(global.texts[4]) * 2;
			    var ty = y_center + 55 * (i-4);
				
				if (keys_change[3] == true && global.index == 8)
				{				
					var txt = "";
					var tw = string_width(txt);
					var th = string_height(txt);
					draw_text(tx, ty, txt);
					draw_line(tx - 5, ty + th, tx - 12 + tw, ty + th);
					
					if (keyboard_check_pressed(vk_anykey))
					{
						if (!scr_keyUsed(array_length(global.keys)))
						{
							global.keys[3] = keyboard_lastkey;
							keys_change[3] = false;
						}
					}
				}
				else
				{			
					var txt = scr_keyToString(global.keys[3]);
					draw_text(tx, ty, txt);
					keys_change[3] = false;
				}
			}
			
			// draw key used to select
			if (i == 9)
			{
			    var tx = x_center + string_width(global.texts[4]) * 2;
			    var ty = y_center + 55 * (i-4);
				
				if (keys_change[4] == true && global.index == 9)
				{				
					var txt = "";
					var tw = string_width(txt);
					var th = string_height(txt);
					draw_text(tx, ty, txt);
					draw_line(tx - 5, ty + th, tx - 12 + tw, ty + th);
					
					if (keyboard_check_pressed(vk_anykey))
					{
						if (!scr_keyUsed(array_length(global.keys)))
						{
							global.keys[4] = keyboard_lastkey;
							keys_change[4] = false;
						}
					}
				}
				else
				{			
					var txt = scr_keyToString(global.keys[4]);
					draw_text(tx, ty, txt);
					keys_change[4] = false;
				}
			}
		}
		scr_resetFont()
	break;
	
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
		if (created == false)
		{
			for(var i = 11; i < 18; i++)
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
					y_center -= 25;
				}
				else
				{
					y_center = gui_height/3;
				}
			
				switch(i)
				{
					case 12:
						scr_HorizontalValueChange(12, x_center, 150, y_center, i-11, string(obj_player.att[i-12]));
					break;
				
					case 13:
						scr_HorizontalValueChange(13, x_center, 150, y_center, i-11, string(obj_player.att[i-12]));
					break;
				
					case 14:
						scr_HorizontalValueChange(14, x_center, 150, y_center, i-11, string(obj_player.att[i-12]));
					break;
				
					case 15:
						scr_HorizontalValueChange(15, x_center, 150, y_center, i-11, string(obj_player.att[i-12]));
					break;
				}
			
				draw_text(x_center, y_center + 55 * (i-11), global.texts[i]);
			}
		
			switch(global.index)
			{
				case 12:
					scr_rightaddleftsubAtt(global.keys[1], global.keys[3], 0);
				break;
			
				case 13:
					scr_rightaddleftsubAtt(global.keys[1], global.keys[3], 1);
				break;
				
				case 14:
					scr_rightaddleftsubAtt(global.keys[1], global.keys[3], 2);
				break;
				
				case 15:
					scr_rightaddleftsubAtt(global.keys[1], global.keys[3], 3);
				break;
			}
		}
}