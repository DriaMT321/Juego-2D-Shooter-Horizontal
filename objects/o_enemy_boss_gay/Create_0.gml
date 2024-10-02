/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Inicializar el temporizador de disparo
shoot_timer = room_speed;  // Disparo cada 1 segundo (ajustable)

image_blend = c_red;
// Inicializar las trayectorias disponibles
trajectories = [100, room_height / 2, room_height - 100];  // Altura alta, media, baja
// Inicializar el estado de animación
animation_state = "entering";

tiros = 0;

canShot = 1;
shoot_delay = 30;
weapon = "naranja";


invi = 0;