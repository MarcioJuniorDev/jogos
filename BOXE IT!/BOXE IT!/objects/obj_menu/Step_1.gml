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

// limit the index between 0 and 3
if (index < 0)
{
	index = 0;
}

if (index > 3)
{
	index = 3;
}

// LANGUAGE
if keyboard_check_pressed(ord("L"))
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