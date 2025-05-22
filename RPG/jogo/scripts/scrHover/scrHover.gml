function scrHover(hor_pos, ver_pos, hor_dis, ver_dis){
	var hover;
	if (mouse_x > hor_pos && mouse_x < hor_pos+hor_dis && mouse_y > ver_pos && mouse_y < ver_pos+ver_dis)
	{
		hover = true;
	}
	else
	{
		hover = false;
	}
	return hover;
}