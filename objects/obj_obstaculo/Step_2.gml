// meteoro vai pra baixo
y+=global.meteour_movespd;

if (y >= 320)
{
	instance_destroy();
	exists = false;
}

if (exists = false)
{
	instance_create_layer(random_range(16, 144), 32, "Instances", obj_obstaculo);
	exists = true;
}