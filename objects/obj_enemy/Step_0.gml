
image_angle = point_direction(x, y, obj_player.x, obj_player.y);


var image_vector = [ lengthdir_x(1, image_angle), lengthdir_y(1, image_angle)];


hspeed = image_vector[0] * move_speed * delta_time /1000000.0;
vspeed = image_vector[1] * move_speed * delta_time /1000000.0;


