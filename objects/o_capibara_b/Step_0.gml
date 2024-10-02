/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (state == "entrar")
{
	x += 10;
	if(x > 100)
	{
		state = "fight";	
	}
}
else if(state == "fight")
{
	shoot_delay = irandom_range(120, 180); 
	if (canShot) {
		canShot = 0;

	    proj1 = instance_create_layer(x, y, "Instances", o_shot_b);
	    proj1.direction = 0;  

	    proj2 = instance_create_layer(x, y, "Instances", o_shot_b);
	    proj2.direction = -30;  

	    proj3 = instance_create_layer(x, y, "Instances", o_shot_b);
	    proj3.direction = 30;  

  
	    proj1.speed = 5;
	    proj2.speed = 5;
	    proj3.speed = 5;
		
		alarm[1] = shoot_delay;
	}
	// Mover el proyectil en la dirección asignada
	x += lengthdir_x(speed, direction);
	y += lengthdir_y(speed, direction);
}
