// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_weapon(_weapon){
	if (instance_exists(global.current_weapon))
		destroy_object(global.current_weapon, noone);
	
	global.current_weapon = instance_create_layer(weapon_spawn_point.x, weapon_spawn_point.y, "HUD", _weapon);
	global.current_weapon.image_xscale = weapon_spawn_point.image_xscale;
	global.current_weapon.image_yscale = weapon_spawn_point.image_yscale;
}