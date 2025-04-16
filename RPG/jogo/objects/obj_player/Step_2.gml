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

// jump
if (nJumpDuration > 0)
{
	y -= nJumpDistance;
	bCanJump = false;
	nJumpDuration--;
}
else
{
	if (!scrVerHitbox(1, obj_ground))
	{
		if (!scrVerHitbox(nGravity, obj_ground))
		{
			y += nGravity;
		}
		else
		{
			y += 1;
		}
	}
	else
	{
		bCanJump = true;
	}
}

// attack
if (nAttackDuration > 0)
{
	nAttackDuration--;
	bCanAttack = false;
	nAttackCooldown = 0;
	obj_attack.x = x+16*nLookingDir;
	obj_attack.y = y;
}
else
{
	instance_destroy(obj_attack);
}