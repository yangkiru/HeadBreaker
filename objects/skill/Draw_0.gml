/// @description Insert description here
// You can write your code in this editor

if (data != noone) {
	t = cool_time / max_cool_time;
	draw_sprite_ext(sprite_index, -1, x, y, lerp(image_xscale, original_xscale * 0.9, t), lerp(image_yscale, original_yscale * 0.9, t), 0, merge_color(c_white, c_black, t), 1);
}