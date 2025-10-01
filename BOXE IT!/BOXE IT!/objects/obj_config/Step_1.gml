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
			key_change = true;
			break;
			
		case 6:
			room_goto_previous();
			index = 2;
			break;
	}
}

// LANGUAGE
if (keyboard_check_pressed(keys[1]) && index == 4 || keyboard_check_pressed(keys[3]) && index == 4)
{
	if (lang == "pt")
	{
		lang = "en";
	}
	else
	{
		lang = "pt";
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
}