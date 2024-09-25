var _sapma = 5;
speed=15;
if(obj_player.hspeed>0 || obj_player.vspeed>0){_sapma = 15;} else { _sapma = 5}

if(keyboard_check(vk_lshift)){_sapma = 2}else{_sapma = 5}


direction = obj_player.image_angle + random_range(-_sapma,_sapma);
image_angle= direction;
