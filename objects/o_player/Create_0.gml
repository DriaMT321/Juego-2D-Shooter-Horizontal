/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


time_since_last_shot = 0;
shot_delay = 10;  // Tiempo en steps entre cada disparo
using_recharge_shot = false;  // Indica si el jugador está usando el disparo recargable
charge_level = 0;  // Nivel de carga del disparo
charge_speed = 100 / (room_speed * 0.7);  // carga al 100% en 0.7 segundos
can_shoot = false;  // Solo se puede disparar cuando la barra esté cargada
// Variables para controlar el tiempo de la habilidad
recharge_shot_timer = 0;  // Temporizador de la habilidad
max_recharge_time = room_speed * 10;  // La habilidad dura 10 segundos (ajustable)
// Inicializar la vida del jugador
// Vida del jugador
hp = 100;  // Vida máxima del jugador
max_hp = 100;  // Vida máxima para calcular la barra
immune_timer = 0;  // Temporizador de inmunidad
is_immune = false;  // El jugador no está inmune al principio
is_alive = true;  // El jugador comienza vivo
// Nivel de disparo inicial
shot_level = 1;  // Nivel 1 es el disparo base
// Reproducir la música en bucle cuando inicie el juego
audio_play_sound(snd_music, 1, true);
