/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(!invi){
	if (other.object_index == o_shot_player || other.object_index == o_shot_recharge) {
    global.boss_hp -= other.damage;  // Reducir vida del jefe compartida
    instance_destroy(other);  // Destruir el proyectil del jugador
}


}
