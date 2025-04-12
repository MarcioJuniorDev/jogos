// move
x += nDir * nSpd;
nDir = 0;

// dash
if (bDashKey == true)
{
	if (bLookingDir == true)
	{
		x += nDashDistance;
	}
	else
	{
		x -= nDashDistance;
	}
	
	bDashKey = false;
}