c_coords();

// control -----

waveTime = 800;
nextWave = noone;

alarm[0] = waveTime;

// actions --------

c_enemy_spawn(xder, y2, o_boss_manager);

c_enemy_spawn(xder, y2, o_enemy_boss);
