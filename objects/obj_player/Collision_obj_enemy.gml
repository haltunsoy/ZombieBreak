/// @description hp
// You can write your code in this editor

if(obj_player.hp <= 0)
{
	
	obj_game.alarm[1]= 150;
	 show_debug_message("Alarm set!");
	 instance_destroy()
}
else if(!instance_exists(obj_player)){obj_game.alarm[1]= 150;}