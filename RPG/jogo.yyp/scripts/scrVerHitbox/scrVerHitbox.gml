function scrVerHitbox(spd, name)
{
	if (place_meeting(x, y-spd, name) || place_meeting(x-spd, y+spd, name)) 
	{
		return true;
	}
	else
	{
		return false;
	}
}