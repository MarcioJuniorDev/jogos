  switch(room)
{
	// menu
	case rm_menu:
		
		// menu draw
		play[5] = scrTextColorChange(play[1], play[2], play[3], play[4]);
		settings[5] = scrTextColorChange(settings[1], settings[2], settings[3], settings[4]);
		leave[5] = scrTextColorChange(leave[1], leave[2], leave[3], leave[4]);
		
		scrDrawTextwColor(play[1], play[2], play[5], play[0]);
		scrDrawTextwColor(settings[1], settings[2], settings[5], settings[0]);
		scrDrawTextwColor(leave[1], leave[2], leave[5], leave[0]);
	break;
	
	case rm_config:
	break;
}