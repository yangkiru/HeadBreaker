/// @description 스케일이 돌아오는 알람
// You can write your code in this editor
t1 += delta_time / 1000000;
if (t1 > decrease_time1) {
	t1 = 0;
	image_xscale = 1;
	image_yscale = image_xscale;
} else {
	image_xscale = lerp(image_xscale, 1, t1);
	image_yscale = image_xscale;
	alarm[0] = 1;
}