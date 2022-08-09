/// @description Insert description here
// You can write your code in this editor

if (!visible)
	return;
if (t >= 1) {
	t = 0;
	is_damaged = false;
	audio_sound_pitch(sfx_hit, random_range(0.5, 0.7));
	audio_play_sound(sfx_hit, 10, false);
	damage_to_unit(target, 1, noone, target.x, target.y - 10);
	add_coin(1);
	instance_destroy_pooled(self);
}

t += delta_time / 1000000;

p = bezier_point_find(t, ox, oy, mx, my, mx, my, target.x, target.y);
x = p[0];
y = p[1];
image_angle = point_direction(last_x, last_y, x, y);
last_x = x;
last_y = y;