/// @description Zombie spawner

 instance_create_layer(random_range(0,room_width), random_range(0,room_height), "Instances", obj_enemy);
 max_zombies -= 1 ;
 alarm[0] = zombies_spawnspeed;




