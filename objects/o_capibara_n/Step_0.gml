/// @description Inserte aquí la descripción

if (state == "entrar")
{
	x -= 5;
	if(x < room_width - 100)
	{
		state = "fight";	
	}
}
else if(state == "fight")
{
	if(arriba)
	{	
		y -= 2;
		if(y < 160) arriba = 0;
	} else {
		y += 2;
		if(y > room_height - 160) arriba = 1;
	}
	
	shoot_delay = irandom_range(60, 120); 
	if (canShot) {
		canShot = 0;
		if (instance_exists(o_player)) {
			shot = instance_create_layer(x, y, "Instances", o_shot_nig);
			shot.direction = point_direction(x, y, o_player.x, o_player.y); 
			shot.speed = 5;
		}
		alarm[1] = shoot_delay;
	}
}

