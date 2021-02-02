/// @description Insert description here
// You can write your code in this editor

draw_set_colour($283DE2);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_font(fn_daughter_30);
draw_text(x, y, "Time Left " + string_format(pnl_store.t, 0, 0));