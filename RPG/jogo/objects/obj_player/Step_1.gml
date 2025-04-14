// move
var left_move = scrKeyboardCheck(vk_left) || scrKeyboardCheck((ord("A")));
var right_move = scrKeyboardCheck(vk_right) || scrKeyboardCheck((ord("D")));

if (left_move)
{
	nDir = -1;
	nLookingDir = -1;
}

if (right_move)
{
	nDir = 1;
	nLookingDir = 1;
}

if (left_move && right_move)
{
	nDir = 0;
}

// dash
bDashKey = scrKeyboardCheckPressed(ord("Z"));
obj_dashIcon.x = x-32;
obj_dashIcon.y = y+32;


// - input
if (bDashKey && bCanDash)
{
	nDashDuration = 15;
	bCanDash = false;
	nDashCooldown = 0;
}

// - cooldown
if (!bCanDash)
{
	if (nDashCooldown != 60)
	{
		nDashCooldown++;
		obj_dashIcon.sprite_index = spr_dashCooldown;
	}
	else
	{
		obj_dashIcon.sprite_index = spr_dashIcon;
		bCanDash = true;
	}
}

// hitbox
bHorHitbox = scrHorHitbox(obj_ground, nSpd);

if (bHorHitbox)
{
	var i = 0;
	while (i < 5 && scrHorHitbox(obj_ground, 1))
	{
		x -= nDir;
		i++;
	}
	bHorHitbox = scrHorHitbox(obj_ground, nSpd);
}