// Reducir el temporizador de vida
life_timer -= 1;

// Reducir el cooldown de daño
damage_cooldown -= 1;

if (life_timer <= 0) {
    instance_destroy();  // Destruir la explosión después de 2 segundos
}

// Verificar si el jugador está cerca de la explosión y aplicar daño si el cooldown ha expirado
if (distance_to_object(o_player) < 50) {  // Si el jugador está a menos de 50 píxeles
    if (!o_player.is_immune && damage_cooldown <= 0) {  // Solo si el cooldown ha expirado
        o_player.hp -= 20;  // Quitar 1 punto de vida
        o_player.is_immune = true;  // Activar inmunidad
        o_player.immune_timer = room_speed;  // Dar inmunidad por 1 segundo
        
        // Reiniciar el cooldown de daño
        damage_cooldown = room_speed *2 ;  // Cooldown de 0.5 segundos antes de que el jugador pueda recibir daño de nuevo
    }
}
