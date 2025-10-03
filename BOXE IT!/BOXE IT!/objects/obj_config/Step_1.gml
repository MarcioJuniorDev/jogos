// DRAW TEXT
// hover system
// change hover
if (keyboard_check_pressed(keys[2]))
{
	index += 1;
}

if (keyboard_check_pressed(keys[0]))
{
	index -= 1;
}

// index limitations
switch(room)
{
	case rm_menu:
		if (index < 0)
		{
			index = 0;
		}

		if (index > 3)
		{
			index = 3;
		}
	break;
	
	case rm_config:
		if (index < 4)
		{
			index = 4;
		}

		if (index > array_length(options) - 1)
		{
			index = array_length(options) - 1;
		}
	break;
}

// MENU USE
// navigation
if (keyboard_check_pressed(keys[4]))
{
	switch(index)
	{
		case 0:
			break;
			
		case 1:
			break;
			
		case 2:
			room_goto(rm_config);
			index = 4;
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
			index = 2;
			break;
	}
}

// LANGUAGE
if (keyboard_check_pressed(keys[1]) && index == 4 || keyboard_check_pressed(keys[3]) && index == 4)
{
	if (keyboard_lastkey == keys[1])
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

// the options' texts become the selected language texts
switch(lang)
{
	case "pt":
		for (var i = 0; i < array_length(options); i++)
		{
			options[i] = portuguese[i];
		}
		break;
	case "en":
		for (var i = 0; i < array_length(options); i++)
		{
			options[i] = english[i];
		}
	break;
	case "es":
		for (var i = 0; i < array_length(options); i++)
		{
			options[i] = spanish[i];
		}
	break;case "fr":
		for (var i = 0; i < array_length(options); i++)
		{
			options[i] = french[i];
		}
	break;
}