if (keyboard_check_pressed(vk_down))
{
	index += 1;
}

if (keyboard_check_pressed(vk_up))
{
	index -= 1;
}

if (index < 0)
{
	index = 0;
}

if (index > 3)
{
	index = 3;
}