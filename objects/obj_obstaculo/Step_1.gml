// colisao
if (place_meeting(x, y+global.meteour_movespd, obj_jogador))
{
	instance_destroy(obj_jogador);
}

image_angle += global.meteour_movespd;