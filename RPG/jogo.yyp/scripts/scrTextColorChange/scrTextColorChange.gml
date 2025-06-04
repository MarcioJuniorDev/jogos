function scrTextColorChange(textX, textY, textWidth, textHeight)
{
	var textColor;
	if (scrHover(textX, textY, textWidth, textHeight))
		{
			textColor = c_red;
		}
		else
		{
			textColor = c_white
		}
	return textColor;
}