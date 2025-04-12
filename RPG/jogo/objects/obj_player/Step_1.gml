// move
var left_move = scrKeyboardCheck(vk_left) || scrKeyboardCheck((ord("A")));
var right_move = scrKeyboardCheck(vk_right) || scrKeyboardCheck((ord("D")));

if (left_move)
{
	nDir = -1;
	bLookingDir = false;
}

if (right_move)
{
	nDir = 1;
	bLookingDir = true;
}

if (left_move && right_move)
{
	nDir = 0;
}

// dash
bDashKey = scrKeyboardCheck(ord("Z"));