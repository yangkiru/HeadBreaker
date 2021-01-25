gml_pragma("global", "particle_init()");
	
#region Particle Types
	
// Basic Particle
_p = part_type_create();
	
part_type_shape(_p, pt_shape_disk);
//part_type_life(_p, 20, 40);
part_type_scale(_p, 0.5, 0.5);

//part_type_alpha2(_p, 1, 0);
part_type_color2(_p, c_purple, c_purple);
//part_type_size(_p, 0.1, 0.2, 0.025, 0);

global.pt_basic = _p;

// Trail Particle
_p = part_type_create();

part_type_shape(_p, pt_shape_flare);
part_type_life(_p, 20, 40);
part_type_scale(_p, 0.2, 0.2);
//part_type_size(_p, 0.4, 0.4, -0.02, 0.05);

part_type_alpha1(_p, 0.3);
//part_type_alpha2(_p, 1, 0);
part_type_color2(_p, c_white, c_white);

global.pt_trail = _p;

// Set as step
part_type_step(global.pt_basic, 1, global.pt_trail);
	
#endregion