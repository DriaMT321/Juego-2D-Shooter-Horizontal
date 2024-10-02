// Inicializar el temporizador de disparo
shoot_timer = room_speed;  // Disparo cada 1 segundo (ajustable)

trajectories = [100, room_height / 2, room_height - 100];  // Altura alta, media, baja

tiros = 0;

canShot = 1;
shoot_delay = 30;
weapon = "explosive";
// Estado inicial de la animación
animation_state = "entering";  // Estado por defecto, el jefe está en pantalla
invi = 0;