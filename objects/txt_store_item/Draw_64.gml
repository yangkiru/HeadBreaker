/// @description Insert description here
// You can write your code in this editor

draw_set_colour($000000);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_font(fn_daughter_15);
if (data != noone)
	draw_text(x, y, string(number_of_list) + ". " + data.name);