
if (instance_exists(obj_player))
{
draw_text(20,15,string(obj_player.magammo)+ "/" + string(obj_player.ammo) )
draw_text(20,30,obj_player.hp)
draw_text(20,45,delta_time)
draw_text(20,60,obj_player.image_vector[0])
draw_text(20,75,string(obj_player.hspeed) + "/" + string(obj_player.vspeed))
draw_text(20,90,string(_min)+":"+ string(_sec)+":"+ string(_sal))
draw_text(20,105,zombies)
}















