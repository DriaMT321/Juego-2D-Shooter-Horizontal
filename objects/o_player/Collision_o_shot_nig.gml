/// @description Inserte aquí la descripción


if (!is_immune) {
    hp -= 10;  
    is_immune = true;  
    immune_timer = 200; 
    instance_destroy(other);
    if (hp <= 0) {
        is_alive = false;
       
    }
}
