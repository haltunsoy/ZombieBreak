
// Calculate the end point of the ray based on direction and range
var ray_end_x = x + lengthdir_x(range, direction);
var ray_end_y = y + lengthdir_y(range, direction);

// Cast a ray to detect any object
var hit = collision_line(x, y, ray_end_x, ray_end_y, all, false, true);  // Check for any object

// Check if something was hit
if (hit != noone) {
    // Check if the hit object has an 'hp' variable
    if (variable_instance_exists(hit, "hp")) {
        hit.hp -= damage;  // Decrease hp if it exists        
    }

  
}
    instance_destroy();
