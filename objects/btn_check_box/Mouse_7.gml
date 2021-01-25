/// @description Insert description here
// You can write your code in this editor

if (check != noone && !check.visible) {
	// 구매 불가능
	if (target == noone || target.data == noone || target.data.price > global.coin) {
		show_debug_message("구매 불가능");
		return;
	}
	// 구매
	is_bought = add_to_inventory(target.data);
	// 구매 성공
	if (is_bought) global.coin -= target.data.price;
	check.visible = is_bought;
}