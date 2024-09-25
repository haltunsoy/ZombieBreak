
var instance = instance_place(x, y, all); // Check collision with any object
if (instance != noone) {
    if (instance_exists(instance) && variable_instance_exists(instance, "hp")) {
        instance.hp -= 5; // Reduce HP by 10 or any amount you want
        instance_destroy(); // Optional: Destroy bullet after collision
    }
}