/// @description Insert description here
// You can write your code in this editor
draw_set_colour($000000);
draw_set_font(fn_daughter_20);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x, y, frac(global.hp) > 0 ? string_format(global.hp, 0, 1) : global.hp);