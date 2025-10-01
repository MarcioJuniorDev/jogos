function scr_keyChange(key_index)
{
	keyboard_lastkey = vk_nokey;
	if keyboard_check_pressed(vk_anykey)
	{
		keys[key_index] = keyboard_lastkey;
	}
}