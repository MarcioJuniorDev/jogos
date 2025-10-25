// DRAW TEXT
// hover system
// change hover
if (keyboard_check_pressed(global.keys[2]))
{
	global.index += 1;
}

if (keyboard_check_pressed(global.keys[0]))
{
	global.index -= 1;
}

// global.index limitations
switch(room)
{
	case rm_menu:
		scr_indexLimit(0, 3);
	break;
	
	case rm_config:
		scr_indexLimit(4, 10);
	break;
	
	case rm_char_attributes:
		scr_indexLimit(12, 17);
	break;
	
	case rm_char_appearance:
	scr_indexLimit(19, array_length(texts));
break;
}

// MENU USE
// navigation
if (keyboard_check_pressed(global.keys[4]))
{
	switch(global.index)
	{
		case 0:
			room_goto(rm_char_attributes);
			global.index = 12;
			break;
			
		case 1:
			break;
			
		case 2:
			room_goto(rm_config);
			global.index = 4;
			break;
			
		case 3:
			game_end();
			break;
			
		case 5:
			keys_change[0] = true;
			break;
		
		case 6:
			keys_change[1] = true;
			break;
			
		case 7:
			keys_change[2] = true;
			break;
			
		case 8:
			keys_change[3] = true;
			break;
			
		case 9:
			keys_change[4] = true;
			break;
			
		case 10:
			room_goto_previous();
			global.index = 2;
		break;
		
		case 16:
			room_goto(rm_menu);
			global.index = 0;
		break;
		
		case 17:
			if (global.attTotal == 0)
			{
				room_goto(rm_char_appearance);
				global.index = 19;
			}
			else
			{
				warning = true;
			}
		break;
	}
}

// LANGUAGE
if (keyboard_check_pressed(global.keys[1]) && global.index == 4 || keyboard_check_pressed(global.keys[3]) && global.index == 4)
{
	if (keyboard_lastkey == global.keys[1])
	{
		switch(lang)
		{
			case "pt":
				lang = "en";
			break;
			case "en":
				lang = "es";
			break;
			case "es":
				lang = "fr";
			break;
			case "fr":
				lang = "pt";
			break;
		}
	}
	else
	{
		switch(lang)
		{
			case "pt":
				lang = "fr";
			break;
			case "en":
				lang = "pt";
			break;
			case "es":
				lang = "en";
			break;
			case "fr":
				lang = "es";
			break;
		}
	}
}

// the texts' texts become the selected language texts
switch(lang)
{
	case "pt":
		for (var i = 0; i < array_length(texts); i++)
		{
			texts[i] = portuguese[i];
		}
		break;
	case "en":
		for (var i = 0; i < array_length(texts); i++)
		{
			texts[i] = english[i];
		}
	break;
	case "es":
		for (var i = 0; i < array_length(texts); i++)
		{
			texts[i] = spanish[i];
		}
	break;case "fr":
		for (var i = 0; i < array_length(texts); i++)
		{
			texts[i] = french[i];
		}
	break;
}

//	CHARACTER CREATION
// hair_color
if (keyboard_check_pressed(global.keys[1]) && global.index == 19 || keyboard_check_pressed(global.keys[3]) && global.index == 19)
{
	if (keyboard_lastkey == global.keys[1])
	{
		switch(appearance[0])
		{
			case hair_color[0]:
				appearance[0] = hair_color[1];
			break;
			case hair_color[1]:
				appearance[0] = hair_color[2];
			break;
			case hair_color[2]:
				appearance[0] = hair_color[3];
			break;
			case hair_color[3]:
				appearance[0] = hair_color[0];
			break;
		}
	}
	else
	{
		switch(appearance[0])
		{
			case hair_color[0]:
				appearance[0] = hair_color[3];
			break;
			case hair_color[1]:
				appearance[0] = hair_color[0];
			break;
			case hair_color[2]:
				appearance[0] = hair_color[1];
			break;
			case hair_color[3]:
				appearance[0] = hair_color[2];
			break;
		}
	}
}