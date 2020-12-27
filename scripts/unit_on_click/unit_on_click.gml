// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unit_on_click(obj){
	enum UNIT_Type
	{
	   Main = 0,
	   Head,
	   Body,
	   Eye,
	   Nose,
	   Mouth
	}
	with (obj) {
		alarm[0] = 1;	/// 스케일이 돌아오는 알람
		t1 = 0;
		critical = random_range(0, 1);
		is_critical = critical < weapon.crit_chance;
		extra_damage = (type == UNIT_Type.Head ? weapon.on_head : (type == UNIT_Type.Body ? weapon.on_body : 1)) * (is_critical ? weapon.crit_damage : 1);
		damage = weapon.damage * extra_damage;
		unit.hp -= damage;
		money_text.money += 1;

		damage_text.damage = damage;
		damage_text.is_critical = is_critical;
		damage_text.alarm[0] = 1;

		image_xscale += 0.1 * extra_damage;
		image_yscale = image_xscale;

		// 힛 이펙트
		if (effect != noone){
			t2 = 0;
			effect.visible = true;
			effect.image_xscale += 0.1;
			effect.image_yscale = effect.image_xscale;
			alarm[1] = 1;
		}
		// 맞은 스프라이트
		if (on_hit_spr != noone)
			sprite_index = on_hit_spr;
	}
}