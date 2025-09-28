// MENU DRAW
// centering texts
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
var x_center = gui_width/2;
var y_center = gui_height/2;

// text's properties
draw_set_font(ft_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
// drawning texts
for (var i = 0; i < array_length(options); i++)
{
	// hover
	if (index = i)
	{
		hover[i] = c_red;
	}
	else
	{
		hover[i] = c_white;
	}

	scr_drawColor(hover[i], x_center, y_center + 55 * i, options[i]);
}
// reset text's properties
scr_resetFont();