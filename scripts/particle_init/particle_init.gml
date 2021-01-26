gml_pragma("global", "particle_init()");
	
#region Particle Types
	
// Basic Particle
_p = part_type_create();
	
part_type_shape(_p, pt_shape_flare);
part_type_life(_p, 30, 30);
part_type_scale(_p, 0.5, 0.5);

part_type_alpha2(_p, 0.7, 0);
part_type_color1(_p, c_purple);
//part_type_size(_p, 0.1, 0.2, 0.025, 0);

global.pt_cthun_ball = _p;

// Center White Particle

_p = part_type_create();

part_type_shape(_p, pt_shape_flare);
part_type_color1(_p, c_white);
part_type_life(_p, 10, 10);
part_type_scale(_p, 0.2, 0.2);
part_type_alpha1(_p, 0.5);

global.pt_cthun_ball_white = _p;

part_type_step(global.pt_cthun_ball, 1, global.pt_cthun_ball_white);

//// Falling Particle

//_p = part_type_create();

//part_type_shape(_p, pt_shape_flare);
//part_type_color1(_p, c_purple);
//part_type_life(_p, 50, 80);
//part_type_size(_p, 0.1, 0.1, 0, 0);
//part_type_alpha3(_p, 1, 0.7, 0);
//part_type_gravity(_p, 0.2, 270);

//global.pt_cthun_ball_fall = _p;

//part_type_step(global.pt_cthun_ball, 1, global.pt_cthun_ball_fall);

#endregion