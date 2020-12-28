// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unit_on_click_change_spr(obj){
if (obj.on_hit_spr != noone)
		obj.sprite_index = obj.on_hit_spr;
}