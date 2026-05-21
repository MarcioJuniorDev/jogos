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
		scrLoadTextHover(config_right_key);
		scrLoadTextHover(config_left_key);
		scrLoadTextHover(config_down_key);
		scrLoadTextHover(config_dash_key);
		scrLoadTextHover(config_atk_key);
	break;
}