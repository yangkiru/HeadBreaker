// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unit_on_click(obj){
	with (obj) {
		alarm[0] = 1;	/// 스케일이 돌아오는 알람
		t1 = 0;
		critical = random_range(0, 1);
		is_critical = critical < weapon.crit_chance;
		extra_damage = weapon.extra_damage[type];
		damage = weapon.damage * extra_damage;
		global.hp -= damage;
		show_debug_message(object_get_name(obj.object_index) + string(hp));
		hp -= damage;
		show_debug_message(string(hp));
		money_text.money += 1;

		damage_text.damage = damage;
		damage_text.is_critical = is_critical;
		damage_text.alarm[0] = 1;

		image_xscale += 0.1 * extra_damage;
		image_yscale = image_xscale;

		// 힛 이펙트
		if (effect != noone){
			effect.t1 = 0;
			effect.visible = true;
			effect.image_xscale += 0.1;
			effect.image_yscale = effect.image_xscale;
			effect.alarm[0] = 1;
		}
		// 맞은 스프라이트
		unit_on_click_change_spr(obj);
		
		// 클릭 사운드
		audio_play_sound(hit_sfx, 10, false);
		
		for(i = 0; i < array_length_1d(obj.list_on_hit_change_obj); i++){
			unit_on_click_change_spr(obj.list_on_hit_change_obj[i]);
		}
		
	}
}