// menu click
if (scrHover(play[1], play[2], play[3], play[4]) && mouse_check_button_pressed(mb_left))
{
	room_goto(rm_teste);
}

if (scrHover(settings[1], settings[2], settings[3], settings[4]) && mouse_check_button_pressed(mb_left))
{
	room_goto(rm_config);
}

// back to menu
if (scrKeyboardCheckPressed(vk_escape))
{
	room_goto(rm_menu);     
}