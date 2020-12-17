/// @description 클릭 처리
// You can write your code in this editor
image_xscale += 0.1;
image_yscale = image_xscale;

alarm[0] = 1;	/// 스케일이 돌아오는 알람
t1 = 0;
unit.hp -= weapon.damage;
money_text.money += 1;

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