/// @description Insert description here
// You can write your code in this editor

t -= delta_time / 1000000;

if (is_shop_reset && t <= 0) {
	is_shop_reset = false;
	if (path == path_store_open) {
		alarm[0] = 1;
	}
	alarm[2] = 2;
}