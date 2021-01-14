/// @description Insert description here
// You can write your code in this editor

if (!layer_get_visible("GUI_Store")) {
	pnl_store.path = path_store_open;
	pnl_store.alarm[0] = 1;
}