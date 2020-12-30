/// @description 이미지 돌아오는 알람

self.t_hit_spr -= delta_time / 1000000;

if (t_hit_spr < 0) {
	self.sprite_index = self.before_hit_spr;
	show_debug_message(self.sprite_index);
	show_debug_message(self.before_hit_spr);
} else {
	self.alarm[2] = 1;
}