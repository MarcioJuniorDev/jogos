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
instance_create_layer(x-32, y+64, "Instances", obj_dashIcon);

// hitbox
bHorHitbox = false;