/// @description Insert description here
// You can write your code in this editor
t += delta_time / 1000000;
if (t > decrease_time) {
	t = decrease_time;
	image_xscale = 1;
	image_yscale = image_xscale;
	hit_position.visible = false;
} else {
image_xscale = lerp(image_xscale, 1, t);
image_yscale = image_xscale;
alarm[0] = 1;
}