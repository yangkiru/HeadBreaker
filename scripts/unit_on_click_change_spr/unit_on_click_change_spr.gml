// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unit_on_click_change_spr(obj){
	if (instance_exists(obj) && obj.on_hit_spr != noone) {
			obj.sprite_index = obj.on_hit_spr;
			obj.t_hit_spr = 0.5;
			obj.alarm[2] = 1;
	}
}