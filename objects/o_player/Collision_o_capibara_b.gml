/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if (!is_immune) {
    hp -= 10; 
    is_immune = true; 
    immune_timer = 200;  

  
    if (hp <= 0) {
        is_alive = false;
       
    }
}
