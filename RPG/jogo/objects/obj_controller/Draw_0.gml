  switch(room)
{
	// menu
	case rm_menu:
		
		// menu draw
		play[5] = scrTextColorChange(play[1], play[2], play[3], play[4]);
		controls[5] = scrTextColorChange(controls[1], controls[2], controls[3], controls[4]);
		
		scrDrawTextwColor(play[1], play[2], play[5], play[0]);
		scrDrawTextwColor(controls[1], controls[2], controls[5], controls[0]);
}