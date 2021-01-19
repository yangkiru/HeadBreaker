// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_to_inventory(item_data){
	if (item_data.is_weapon) {
		ds_list_add(global.weapon_inventory, item_data);
		spawn_weapon(item_data);
	}
	else ds_list_add(global.item_inventory, item_data);
}