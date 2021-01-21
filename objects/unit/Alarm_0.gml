/// @description 스케일이 돌아오는 알람
// You can write your code in this editor
t1 += delta_time / 1000000;
if (t1 > decrease_time1) {
	t1 = 0;
	image_xscale = original_xscale;
	image_yscale = original_yscale;
} else {
	image_xscale = lerp(image_xscale, original_xscale, t1);
	image_yscale = lerp(image_yscale, original_yscale, t1);
	alarm[0] = 1;
}