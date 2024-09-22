hp = 10;

hspeed = 0;
vspeed = 0;
move_speed = 2;

image_vector = [1,0]


function seconds_to_microseconds (seconds)
{
	return seconds * 1000000;
	
}


//gun
ammo = 200;
reloading =false;
reloadtime = seconds_to_microseconds(2);
reloadprogress = 0;
reqammo = 0;
recoil = 4;
firingprogress = 0;
firerate = seconds_to_microseconds(0.1);
magammo = 20;
magsize = 20;















