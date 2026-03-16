//damage setup 
get_damaged_create(15)
//variables for movement
moveDir = 0;
moveSpd=2;
xspd=0;
yspd=0;

//sprite control 
centerYoffset =1;

weaponOffSetDist = -3;
aimDir =0;
face =3;
sprite[0] = sPlayerRight;
sprite[1] = sPlayerLeft;
sprite[2] = sPlayerDown;

walkingSprite[0] = sPlayerRightWalking;
walkingSprite[1] = sPlayerLeftWalking;
walkingSprite[2] = sPlayerDownWalking;

mask_index = sPlayerDown;

//weapon info 
shootTimer =0;

array_delete(global.PlayerWeapons, 0, array_length(global.PlayerWeapons));


array_push(global.PlayerWeapons, variable_clone(global.WeaponList.Colt_Single_Action_Army));
array_push(global.PlayerWeapons, variable_clone(global.WeaponList.Smith_Wesson_Model_3));
array_push(global.PlayerWeapons, variable_clone(global.WeaponList.Shotgun));


selectedWeapon = 2;
weapon = global.PlayerWeapons[selectedWeapon];


//sound for shooting
soundStage = 0;      // Current stage of sound sequence
soundTimer = 0;      // Timer to delay between sounds

isReloading = false;
reloadTimer = 60;