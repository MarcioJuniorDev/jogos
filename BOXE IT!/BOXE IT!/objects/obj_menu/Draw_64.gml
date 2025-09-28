var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x_centro = gui_largura/2;
var y_centro = gui_altura/2;

draw_set_font(ft_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
for (var i = 0; i < array_length(opcoes); i++)
{
	if (index = i)
	{
		hover[i] = c_red;
	}
	else
	{
		hover[i] = c_white;
	}

	scr_drawColor(hover[i], x_centro, y_centro + 55 * i, opcoes[i]);
}
scr_resetFont();