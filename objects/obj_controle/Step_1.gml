// começa o jogo quando aperta o J
if (keyboard_check_pressed(ord("J")))
{
	room_goto(rm_jogo);
}

switch(room)
{
	case rm_jogo:
		spd_tick += 1;

		if (spd_tick == 60)
		{
			global.meteour_movespd += 1;
			spd_tick = 0;
		}
		
		if (object_exists(obj_jogador))
		{
			global.pontos += 1;
		}
		break;
}