// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// param[0] = effect, param[1] = xscale, param[2] = yscale
function spawn_effect(obj, param){
	o = instance_create_layer(obj.x, obj.y, "effect", param[0]);
	o.image_xscale = param[1];
	o.image_yscale = param[2];
}