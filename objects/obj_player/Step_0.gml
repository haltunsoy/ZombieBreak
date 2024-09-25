var hmove = (keyboard_check(vk_right) || keyboard_check(ord("D")))- (keyboard_check(vk_left)|| keyboard_check(ord("A")));
var vmove = (keyboard_check(vk_down)|| keyboard_check(ord("S"))) - (keyboard_check(vk_up)|| keyboard_check(ord("W")));
hspeed = hmove * move_speed;
vspeed = vmove * move_speed;
//control
image_angle = point_direction(x ,y ,mouse_x ,mouse_y);
 image_vector = [ lengthdir_x(1, image_angle), lengthdir_y(1, image_angle)];
if (keyboard_check(vk_lshift)){move_speed = 0.5;} else{move_speed = 1;}
//speed normalisation
if (hmove != 0 || vmove != 0) {
    var length = point_distance(0, 0, hmove, vmove);
    if (length > 0) {
        hmove /= length; // Normalizasyon
        vmove /= length; // Normalizasyon
    }

    // Karakterin pozisyonunu güncelle
    x += hmove * move_speed;
    y += vmove * move_speed;
}


// animation
if (!reloading)
{
	if (hspeed != 0 || vspeed != 0) {
	 // Hareket var, animasyonu oynat
	 if (!keyboard_check(vk_lshift))
	 {
	 sprite_index = spr_player_walk; // Tek bir animasyon sprite'ı
	 image_speed = 1; // Animasyon hızını ayarla 
	 
	 } else
	 {
	 sprite_index = spr_player_walk; // Tek bir animasyon sprite'ı
	 image_speed = 0.5; // Animasyon hızını ayarla 
	 }
	 recoil = 5;
	}	
	else 
	{
	  sprite_index = spr_player_idle; // Durma animasyonu
	 image_speed = 0;
	 recoil = 2;
	}
}
else
{
	sprite_index = spr_player_reloading;
	image_speed = 0.2;
}

//reload
if(reloading)
{	
	reloadprogress += delta_time;
	if (reloadprogress >= reloadtime )
	{		
		ammo = ammo - reqammo;
		magammo += reqammo ;
		reloading = false;
		reloadprogress = 0;	
	}	
}

firingprogress -= delta_time;

if (mouse_check_button(mb_left) && magammo>0 && firingprogress<0 && reloading == false)
{
	firingprogress = firerate;
    instance_create_layer(x, y, "Instances", obj_bullet);
		magammo = magammo -1;
	var knockback_vector = [image_vector[0] * -1 * recoil, image_vector[1] * -1 * recoil];
	hspeed += knockback_vector[0];
	vspeed += knockback_vector[1];
	
}




