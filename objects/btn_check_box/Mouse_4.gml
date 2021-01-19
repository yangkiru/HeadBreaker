/// @description Insert description here
// You can write your code in this editor

if (check != noone && !check.visible) {
	// 구매 불가능
	if (target == noone || target.data.price > global.coin) {
		show_debug_message("구매 불가능");
		return;
	}
	// 구매
	show_debug_message("구매");
	check.visible = true;
	global.coin -= target.data.price;
	show_debug_message(target.data);
	add_to_inventory(target.data);
}