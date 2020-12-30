/// @description Insert description here
// You can write your code in this editor
if (!is_init) {
	t = 0;
	image_xscale = original_xscale * 1.5;
	image_yscale = original_yscale * 1.5;
	is_init = true;
}
t += delta_time / 1000000;
if (t > 0.5) {
	t = 0;
	image_xscale = original_xscale;
	image_yscale = original_yscale;
	visible = false;
	is_init = false;
} else {
	image_xscale = lerp(image_xscale, original_xscale, t);
	image_yscale = lerp(image_xscale, original_yscale, t);
}