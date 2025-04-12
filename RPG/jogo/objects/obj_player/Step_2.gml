// dash
if (nDashDuration > 0)
{
    var step = sign(nDashDistance) * nLookingDir;
    var i = 0;

    // tenta mover pixel por pixel
    while (i < nDashDistance)
    {
        if (!place_meeting(x + step, y, obj_ground))
        {
            x += step;
            i++;
        }
        else
        {
            break;
        }
    }
	
	nDashDuration--;
}

// move
if (!bDashKey && nDir != 0 && !bHorHitbox)
{
	x += nDir * nSpd;
	nDir = 0;
}
