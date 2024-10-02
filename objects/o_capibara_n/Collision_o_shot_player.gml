/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



hp -= 10;


instance_destroy(other);
if (hp <= 0) {
    instance_destroy();
}
