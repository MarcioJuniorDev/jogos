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
instance_create_layer(192, 576, "Instances", obj_DashCooldown);

// hitbox
bHorHitbox = false;