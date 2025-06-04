// move
nDir = 0;
nSpd = 5;

// dash
nDashDistance = 15;
nDashDuration = 0;
bDashKey = false;
nLookingDir = 1;
nDashCooldown = 60;
bCanDash = true;
instance_create_layer(x-32, y+64, "Icons", obj_dashIcon);

// hitbox
bHorHitbox = false;

// jump
nJumpDistance = 14;
nJumpDuration = 0;
bJumpKey = false;
bCanJump = true;
nGravity = 8;

// attack
bAttackKey = false;
nAttackDuration = 0;
nAttackCooldown = 120;
bCanAttack = true;