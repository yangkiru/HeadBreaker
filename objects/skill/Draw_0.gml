/// @description Insert description here
// You can write your code in this editor

if (data != noone) {
	t = cool_time / max_cool_time;
	draw_ring_segments(x, y, 50, 5, 360, t == 0 ? int64(t_recover * 360) : int64(t * 360), 90, 360, 1, merge_color(c_red, c_black, t));
	draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, 0, c_white, 1);
}