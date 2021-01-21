// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_damage_text(damage, is_critical){
	damage_text.damage = damage;
	damage_text.is_critical = is_critical;
	damage_text.alarm[0] = 1;
}