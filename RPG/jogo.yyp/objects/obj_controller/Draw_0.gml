  switch(room)
{
	// menu
	case rm_menu:
		
		// menu draw
		scrLoadTextHover(play);
		scrLoadTextHover(settings);
		scrLoadTextHover(leave);
	break;
	
	case rm_config:
		scrLoadTextHover(config_up_key);
	break;
}