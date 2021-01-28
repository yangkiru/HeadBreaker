/// @description Insert description here

if(is_critical)
	draw_set_colour($b22222);
else
	draw_set_colour($81c147);
draw_set_font(fn_daughter_30);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
//draw_text_transformed(x_pos, y_pos, is_critical ? "Critical! " + string(damage) : damage, x_scale, y_scale, 0);
draw_text_transformed(x, y, frac(damage) > 0 ? string_format(damage, 0, 1) : damage, x_scale, y_scale, 0);