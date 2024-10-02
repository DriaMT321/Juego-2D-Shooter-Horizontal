// Verificar la vida del jefe
if (global.boss_hp <= 900) {
    // Verificar si o_enemy_boss existe antes de intentar acceder a él
    if (instance_exists(o_enemy_boss)) {
        o_enemy_boss.animation_state = "leaving";  // Estado de animación de salida
    }

    // Verificar si o_enemy_boss_gay no existe antes de crearlo
    if (bobito) {
		alarm[0] = 60;
		bobito =0;
    }
}

if (global.boss_hp <= 0) {
    // Destruir ambos jefes cuando la vida llegue a 0 si existen
	if(xd)
	{
		o_player.alarm[1] = 120;
		xd = 0;
	}
    if (instance_exists(o_enemy_boss)) {
        instance_destroy(o_enemy_boss);
    }
    if (instance_exists(o_enemy_boss_gay)) {
        instance_destroy(o_enemy_boss_gay);
    }
}
