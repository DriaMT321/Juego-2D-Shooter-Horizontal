/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



if (is_immune) {
    immune_timer -= 1;
    image_alpha = 0.5;  
    if (immune_timer <= 0) {
        is_immune = false;
        image_alpha = 1;  
    }
} else {
    image_alpha = 1;  
}


draw_self(); 

if (using_recharge_shot) {

    draw_set_color(c_green);
    draw_rectangle(10, room_height - 20, 10 + charge_level * (room_width - 20) / 100, room_height - 10, false);
    draw_set_color(c_white);
    draw_text(10, room_height - 40, ": " + string(ceil(recharge_shot_timer / room_speed)));
}

event_inherited();


draw_set_font(Font2);
draw_set_color(c_white);
draw_text(10, room_height - 100, "Vida: " + string(hp));  // Muestra la vida restante

