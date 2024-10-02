/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


// Destruir el proyectil enemigo cuando colisiona con o_shot_player o o_shot_recharge
if (other.object_index == o_shot_player || other.object_index == o_shot_recharge) {
    // Destruir el proyectil enemigo (o_shot_boss)
    instance_destroy();

    // Destruir el proyectil del jugador que lo golpeó
    instance_destroy(other);
}
