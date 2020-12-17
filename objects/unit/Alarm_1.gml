/// @description 힛 이펙트 및 스프라이트 알람
// You can write your code in this editor
t2 += delta_time / 1000000;
if (t2 > decrease_time2) {
	t2 = decrease_time2;
	effect.image_xscale = 1;
	effect.image_yscale = effect.image_xscale;
	effect.visible = false;
	if (before_hit_spr != noone)
		sprite_index = before_hit_spr;
} else {
	effect.image_xscale = lerp(effect.image_xscale, 1, t2);
	effect.image_yscale = effect.image_xscale;
	alarm[1] = 1;
}
