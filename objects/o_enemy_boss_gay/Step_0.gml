
if (animation_state == "leaving") {
    x += 5; 
    if (x > room_width) {
        instance_destroy(); 
    }
} else if (animation_state == "entering") {
    x += 5; 
		invi = 1;
    if (x >= 150) { 
        animation_state = "idle"; 
		invi = 0;
    }
}


if (animation_state == "idle") {
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
	    proj.direction = 0; 

  
	    array_delete(trajectories, random_index, 1);

        
	    shoot_timer = room_speed;
	}
	if (weapon == "naranja")
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
			if(tiros > 8)
			{
				weapon = "huesos";	
				tiros = 0;
			}
		}
	}
	else 
	{
		shoot_delay = 60;
		algo = irandom_range(-100,100)
		if (canShot) {
			canShot = 0;

		    proj1 = instance_create_layer(x, y + algo, "Instances", o_shot_b);
		    proj1.direction = 0;  

		    proj2 = instance_create_layer(x, y + algo, "Instances", o_shot_b);
		    proj2.direction = -30;  

		    proj3 = instance_create_layer(x, y + algo, "Instances", o_shot_b);
		    proj3.direction = 30;  

  
		    proj1.speed = 5;
		    proj2.speed = 5;
		    proj3.speed = 5;
		
			alarm[0] = shoot_delay;
			tiros++;
			if(tiros > 5)
			{
				weapon = "naranja";	
				tiros = 0;
			}
		}
	}
}


if (global.boss_hp <= 0) {
    instance_destroy();
}
