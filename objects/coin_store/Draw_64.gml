/// @description Insert description here
// You can write your code in this editor

if (target_item != noone && target_item.data != noone) {
	draw_set_colour($000000);
	draw_set_halign(fa_right);
	draw_set_valign(fa_top);
	draw_set_font(fn_daughter_20);

	draw_text(x, y, target_item.data.price);
}