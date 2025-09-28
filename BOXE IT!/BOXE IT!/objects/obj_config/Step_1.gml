// DRAW TEXT
// hover system
// change hover
if (keyboard_check_pressed(vk_down))
{
	index += 1;
}

if (keyboard_check_pressed(vk_up))
{
	index -= 1;
}

// limit the index between 0 and 3 in the menu
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
}

// MENU USE
if (keyboard_check(vk_enter))
{
	switch(index)
	{
		case 0:
			break;
			
		case 1:
			break;
			
		case 2:
			room_goto(rm_config);
			break;
			
		case 3:
			game_end();
			break;
	}
}

// LANGUAGE
if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_left) && room = rm_config && index = 4)
{
	if (lang = "pt")
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

// NAVIGATION
// back
if (keyboard_check_pressed(vk_escape))
{
	switch(room)
	{
		case rm_config:
			room_goto_previous();
			index = 2;
		break;
	}
}