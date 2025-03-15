switch(room)
{
	// muda a sala quando o jogador aperta no "botão" ou aperta J
	case rm_menu:
		if (mouse_check_button_pressed(mb_left) && mouse_x > 32 && mouse_x < 128 && mouse_y > 32 && mouse_y < 96)
		{
			room_goto(rm_jogo);
		}
		
		if (mouse_check_button_pressed(mb_left) && mouse_x > 32 && mouse_x < 128 && mouse_y > 128 && mouse_y < 192)
		{
			room_goto(rm_controles);
		}
		if (keyboard_check_pressed(ord("J")))
		{
			room_goto(rm_jogo);
		}
	break;
	
	// na sala do jogo
	case rm_jogo:
		// aumenta a velocidade do meteoro
		spd_tick += 1;

		if (spd_tick == 60)
		{
			global.meteour_movespd += 1;
			spd_tick = 0;
		}
		
		// aumenta os pontos
		if (object_exists(obj_jogador))
		{
			global.pontos += 1;
		}
	break;
	
	// na sala controles
	case rm_controles:
		// botão de voltar
		if (mouse_check_button_pressed(mb_left) && mouse_x > 32 && mouse_x < 128 && mouse_y > 256 && mouse_y < 288)
		{
			room_goto(rm_menu);
		}
	break;
}