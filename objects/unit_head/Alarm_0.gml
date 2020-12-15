/// @description Insert description here
// You can write your code in this editor
t += delta_time / 1000000;
show_debug_message(t);
if (t > 1) {
	t = 1;
	image_xscale = 1;
	image_yscale = image_xscale;
} else {
image_xscale = lerp(image_xscale, 1, t);
show_debug_message(image_xscale);
image_yscale = image_xscale;
alarm[0] = 1;
}