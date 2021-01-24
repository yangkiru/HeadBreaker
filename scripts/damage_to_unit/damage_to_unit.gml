// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function damage_to_unit(_unit, damage, is_critical, x, y) {
	if (global.is_die) return;
	_unit.alarm[0] = 1;	/// 스케일이 돌아오는 알람
	_unit.t1 = 0;
	
	_unit.hp -= damage;
	global.hp -= damage;
	set_damage_text(damage, is_critical, x, y - 20);
	
	check_unit_die(_unit);
	
	if (global.hp < 0) { 
		global.hp = 0;
		global.is_die = true;
	}
		
	_unit.image_xscale *= 1.1;
	_unit.image_yscale *= 1.1;
	
	// 힛 이펙트
	if (_unit.effect != noone) {
		_unit.effect.t = 0;
		_unit.effect.visible = true;
		_unit.effect.image_xscale *= 1.1;
		_unit.effect.image_yscale *= 1.1;
		_unit.effect.alarm[0] = 1;
	}
	
	// 힛 스프라이트
	unit_on_click_change_spr(_unit);
	
	for(i = 0; i < array_length_1d(_unit.list_on_hit_change_obj); i++) {
		unit_on_click_change_spr(_unit.list_on_hit_change_obj[i]);
	}
}