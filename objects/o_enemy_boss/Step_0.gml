// Verificar el estado de animación
if (animation_state == "leaving") {
    invi = 1;
    x += 5;  // Mover el jefe hacia fuera de la pantalla
    if (x > room_width + 200) {
        instance_destroy();  // Destruir el jefe cuando esté fuera de la pantalla
    }
} else if (animation_state == "entering") {
    x -= 5;  // Mover el jefe hacia dentro de la pantalla
    if (x < room_width - 150) {
        animation_state = "idle";  // Detener la animación cuando el jefe esté en pantalla
    }
}

// Solo atacar si el jefe está en el estado "idle"
if (animation_state == "idle") {
	if(weapon == "explosive")
	{
	    shoot_timer -= 1;
	    if (shoot_timer <= 0) {
		
	        // Crear el proyectil en la posición elegida
	         if (array_length(trajectories) == 0) {
	            trajectories = [100, room_height / 2, room_height - 100];  
	        }

	         random_index = irandom(array_length(trajectories) - 1);
	         random_height = trajectories[random_index];


	        var proj = instance_create_layer(x, random_height, "Instances", o_shot_boss);
	        proj.speed = 5;
	        proj.direction = 180; 

  
	        array_delete(trajectories, random_index, 1);

        
	        shoot_timer = room_speed;
			tiros++;
			if(tiros > 10)
			{
				weapon = "naranja";	
				tiros = 0;
			}
	    }
	}
	else if (weapon == "naranja")
	{ 
		shoot_delay = 30;
		if (canShot) {
			canShot = 0;
			if (instance_exists(o_player)) {
				shot = instance_create_layer(x, y, "Instances", o_shot_nig);
				shot.direction = point_direction(x, y, o_player.x, o_player.y); 
				shot.speed = 10;
			}
			alarm[0] = shoot_delay;
			tiros++;
			if(tiros > 12)
			{
				weapon = "huesos";	
				tiros = 0;
			}
		}
	}
	else 
	{
		shoot_delay = 90;
		algo = irandom_range(-100,100)
		if (canShot) {
			canShot = 0;

		    proj1 = instance_create_layer(x, y + algo, "Instances", o_shot_b);
		    proj1.direction = 0;  

		    proj2 = instance_create_layer(x, y + algo, "Instances", o_shot_b);
		    proj2.direction = -30;  

		    proj3 = instance_create_layer(x, y + algo, "Instances", o_shot_b);
		    proj3.direction = 30;  

  
		    proj1.speed = -5;
		    proj2.speed = -5;
		    proj3.speed = -5;
		
			alarm[0] = shoot_delay;
			tiros++;
			if(tiros > 5)
			{
				weapon = "explosive";	
				tiros = 0;
			}
		}
	}
}

// Destruir cuando la vida llegue a 0
if (global.boss_hp <= 0) {
    instance_destroy();
}
