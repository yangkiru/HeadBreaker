gml_pragma("global", "cthun_particle_init()");
	
#region Particle Types
	
// Basic Particle
_p = part_type_create();
	
part_type_shape(_p, pt_shape_flare);
part_type_life(_p, 10, 30);
part_type_scale(_p, 0.2, 0.2);

part_type_alpha2(_p, 0.7, 0);
part_type_color1(_p, c_red);
global.pt_laser = _p;

#endregion