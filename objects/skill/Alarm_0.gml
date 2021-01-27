/// @description 호버 사이즈 증가
// You can write your code in this editor

if (is_hover && image_xscale < original_xscale * 1.1) {
	image_xscale += 0.01;
	image_yscale += 0.01;
	alarm[0] = 1;
}