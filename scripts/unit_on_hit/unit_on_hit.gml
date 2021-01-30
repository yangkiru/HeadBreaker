// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unit_on_hit(_unit, is_sfx_hit) {
	if (global.is_die) return;
		
	alarm[0] = 1;	/// 스케일이 돌아오는 알람
	t1 = 0;
	for (i = 0; i < ds_list_size(global.on_click_before); i++){
		global.on_click_before[| i].OnClickBefore(_unit);
	}
	is_critical[0] = false;
	_damage = weapon.data.GetDamage(_unit, is_critical);
	damage_to_unit(_unit, _damage, is_critical[0], mouse_x, mouse_y);
	add_money(weapon.data.click_money);
		
	// 클릭 사운드
	if (is_sfx_hit) {
		audio_sound_pitch(sfx_hit, random_range(0.8, 1.2));
		audio_play_sound(sfx_hit, 10, false);
	}
}