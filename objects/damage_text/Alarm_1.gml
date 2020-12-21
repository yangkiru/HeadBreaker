/// @description 릴렉스

t += delta_time / 1000000;
if (t > 1) {
	t = 0;
	x_scale = 1;
	y_scale = x_scale;
} else {
	x_scale = lerp(x_scale, 1, t);
	y_scale = x_scale;
	alarm[1] = 1;
}