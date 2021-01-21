/// @description Insert description here
// You can write your code in this editor

t += delta_time / 1000000;
if (t > 0.5) {
	t = 0;
	image_xscale = original_xscale;
	image_yscale = original_yscale;
	visible = false;
} else {
	image_xscale = lerp(image_xscale, original_xscale, t);
	image_yscale = lerp(image_yscale, original_yscale, t);
	alarm[0] = 1;
}