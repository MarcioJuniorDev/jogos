// verifica qual sala está
switch(room)
{
	// no menu, escreve comtroles e jogar
	case rm_menu:
		draw_text(60, 55, "Jogar");
		draw_text(40, 155, "Controles");
	break;
	
	// no jogo, escreve a pontuação
	case rm_jogo:
		draw_text(x, y, "Pontos: " + string(global.pontos));
		
		if (global.morreu == true)
		{	
			draw_text(25, 160, "voce morreu.");
			draw_text(25, 175, "aperte J para");
			draw_text(25, 190, "jogar de novo");
			global.meteour_movespd = 0;
			if (keyboard_check(ord("J")))
			{
				room_goto(rm_jogo);
				global.meteour_movespd = 0;
				global.pontos = 0;
				global.morreu = false;
			}
			else
			{
				global.meteour_movespd = 0;
				global.pontos = 0;
			}
		}
	break;
	
	// nos controles, mostra os textos 
	case rm_controles:
		draw_text(20, 32, "Movimentação:");
		draw_text(30, 52, "use A+D ou");
		draw_text(30, 67, "setas");
		
		draw_text(20, 102, "Começar jogo:");
		draw_text(30, 127, "clique em");
		draw_text(30, 142, "Jogar ou")
		draw_text(30, 157, "aperte J no");
		draw_text(30, 172, "menu");
		
		draw_text(55, 260, "Voltar");
	break;
}