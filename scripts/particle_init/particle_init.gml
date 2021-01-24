gml_pragma("global", "init()");
	
#region Particle Types
	
// Basic Particle
_p = part_type_create();
	
part_type_shape(_p, pt_shape_disk);
	
global.ptBasic = _p;
	
#endregion