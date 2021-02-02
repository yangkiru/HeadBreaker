// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_to_inventory(item_data){
	is_success = true;
	if (item_data.type == ITEM_Type.Weapon) {
		ds_list_add(global.weapon_inventory, item_data);
		set_weapon(item_data);
	} else if (item_data.type == ITEM_Type.Skill) {
		is_success = set_skill(item_data);
	}
	ds_list_add(global.item_inventory, item_data);
	show_debug_message("inventory:"+string(ds_list_size(global.item_inventory)));
	item_data.OnInit();
	
	return is_success;
}