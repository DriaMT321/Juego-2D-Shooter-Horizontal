/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


// Destruir o_shot_boss cuando colisiona con o_shot_player o o_shot_recharge
if (other.object_index == o_shot_player) {
    // Destruir ambos proyectiles
    instance_destroy();
    instance_destroy(other);
} else if (other.object_index == o_shot_recharge) {
    // Destruir solo o_shot_boss y permitir que o_shot_recharge continúe
    instance_destroy();
}
