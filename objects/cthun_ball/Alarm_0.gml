/// @description Insert description here
// You can write your code in this editor
part_particles_create(global.part_system, x + random_range(-5, 5), y + random_range(-5, 5), global.pt_cthun_ball, 1);
if (irandom(15) == 0)
	part_particles_create(global.part_system, x, y, global.pt_cthun_ball_fall, 1);
if (!is_damaged)
	alarm[0] = 2;