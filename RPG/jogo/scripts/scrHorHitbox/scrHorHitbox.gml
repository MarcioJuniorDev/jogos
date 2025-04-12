function scrHorHitbox(name, spd)
{
	if (place_meeting(x+spd, y, name) && nDir == 1 || place_meeting(x-spd, y, name) && nDir == -1) 
	{
		return true;
	}
	else
	{
		return false;
	}
}