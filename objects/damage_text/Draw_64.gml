/// @description Insert description here

draw_set_colour($000000);
draw_set_font(fn_money);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text_transformed(x, y, is_critical ? "Critical! " + string(damage) : damage, x_scale, y_scale, 0);