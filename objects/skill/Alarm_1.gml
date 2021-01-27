/// @description 호버 사이즈 감소
// You can write your code in this editor

if (image_xscale > original_xscale) {
	image_xscale -= 0.01;
	image_yscale -= 0.01;
	alarm[1] = 1;
}