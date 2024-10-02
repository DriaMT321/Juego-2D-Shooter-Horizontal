
if (is_alive) {

    custom_scale = 0.4; 
    move_speed = 6;
    moving = false;

     prev_x = x;
     prev_y = y;

    time_since_last_shot += 0.5;

	if (is_immune) {
	    immune_timer -= 1;
	    if (immune_timer <= 0) {
	        is_immune = false;  
	    }
	}
	

    if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
        x -= move_speed;
        moving = true;  
        image_xscale = -abs(custom_scale);  
    }

    if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
        x += move_speed;
        moving = true;  
        image_xscale = abs(custom_scale);
    }

    if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
        y -= move_speed;
        moving = true; 
    }

    if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
        y += move_speed;
        moving = true; 
    }
    if (place_meeting(x, y, manuelito)) {
        x = prev_x;
        y = prev_y;
    }
	 if (place_meeting(x, y, manuelito2)) {
        x = prev_x;
        y = prev_y;
    }
    x = clamp(x, 0, room_width  - sprite_width * abs(image_xscale));
    y = clamp(y, 0, room_height -40 - sprite_height * abs(image_yscale));

    if (moving) {
        image_speed = 2;
    } else {
        image_index = 0;
        image_speed = 0;
    }

    if (keyboard_check(vk_space) && time_since_last_shot >= shot_delay && !using_recharge_shot) {
    var obj;
    
    // Disparo con el sprite y daño en función del nivel de disparo
    if (shot_level == 1) {
        obj = instance_create_layer(x, y, "Instances", o_shot_player);  // Disparo normal
        obj.damage = 10;  // Daño base
    } else if (shot_level == 2) {
        obj = instance_create_layer(x, y, "Instances", o_shot_player);  // Cambiar sprite
        obj.sprite_index = spriten;  // Sprite de nivel 2
        obj.damage = 20;  // Daño base por 2
    } else if (shot_level == 3) {
        obj = instance_create_layer(x, y, "Instances", o_shot_player);  // Cambiar sprite
        obj.sprite_index = spritenn;  // Sprite de nivel 3
        obj.damage = 30;  // Daño base por 3
    }

    // Ajustar la dirección del disparo
    if (image_xscale == -abs(custom_scale)) {
        obj.shot_speed *= -1;  // Disparo hacia la izquierda
        obj.image_angle = 180;
    }

    // Reiniciar el tiempo desde el último disparo
    time_since_last_shot = 0;
}

    if (keyboard_check_released(vk_space)) {
        charge_level = 0;
    }
    if (using_recharge_shot) {
        recharge_shot_timer -= 1;

        if (recharge_shot_timer <= 0) {
            using_recharge_shot = false;
            can_shoot = false; 
        }

        if (keyboard_check(vk_space) && !can_shoot) {
            if (charge_level < 100) {
                charge_level += charge_speed;  
            }

            if (charge_level >= 100) {
                can_shoot = true;  
            }
        } 

        if (can_shoot && keyboard_check_released(vk_space)) {
            if (image_xscale == -abs(custom_scale)) {
                var obj = instance_create_layer(x, y, "Instances", o_shot_recharge);
                obj.image_xscale = -2;
                obj.image_yscale = 2;
                obj.damage = 30; 
                obj.shot_speed *= -1;  
				
            } else {
                var obj = instance_create_layer(x, y, "Instances", o_shot_recharge);
                obj.image_xscale = 2;
                obj.image_yscale = 2;
                obj.damage = 30;  
            }
            can_shoot = false;  
            charge_level = 0;  
        }
    }
}
else if (!is_alive and visible){
	visible = 0;
	alarm[0] = 120;
	instance_create_layer(room_width/2,room_height/2, "Top", o_darkness)
	shot_level=1;
	}
// Código para mostrar la barra de progreso
draw_set_color(c_white);
draw_rectangle(10, room_height - 20, 10 + charge_level * (room_width - 20) / 100, room_height - 10, false);
// Detectar si se presiona la tecla ESC
if (keyboard_check_pressed(vk_escape)) {
    // Cambiar a la habitación Room_principal
    room_goto(Room_principal);
}
