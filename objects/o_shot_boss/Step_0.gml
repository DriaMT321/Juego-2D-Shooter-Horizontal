/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


// Reducir el temporizador de vida
life_timer -= 1;

if (life_timer <= 0) {
    // Reemplazar el proyectil con una explosión (o_boom)
    instance_create_layer(x, y, "Instances", o_boom);

    // Destruir el proyectil actual
    instance_destroy();
}
