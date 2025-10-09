function scr_HorizontalValueChange(index, xvalue, gap, yvalue, multiple, text)
{
	if (global.index == index)
	{
		draw_text(xvalue + gap, yvalue + 55 * multiple, "<   " + text + "   >");
	}
	else
	{
		draw_text(xvalue + gap, yvalue + 55 * multiple, text);
	}
}