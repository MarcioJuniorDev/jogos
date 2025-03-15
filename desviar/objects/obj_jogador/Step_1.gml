// movimentação
if (keyboard_check(vk_left) || keyboard_check(ord("A")))
{
	dir = -1;
}

if (keyboard_check(vk_right) || keyboard_check(ord("D")))
{
	dir = 1;
}

if (x+player_movespd >= 128 && dir == 1 || x-player_movespd <= 0 && dir == -1)
{
	dir = 0;
}