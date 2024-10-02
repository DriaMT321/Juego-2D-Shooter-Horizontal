/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


// Reducir la vida del capibara en 10 cuando recibe un disparo
hp -= 10;
if(!invi){
hp -= other.damage;
invi = 1
}


// Verificar si la vida del capibara llegó a 0
if (hp <= 0) {
    // Destruir el capibara si su vida llega a 0
    instance_destroy();
}
