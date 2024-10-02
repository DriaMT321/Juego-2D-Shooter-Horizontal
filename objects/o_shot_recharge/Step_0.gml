/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


x += shot_speed;

if (x > room_width || x < 0) {
    instance_destroy();
}
