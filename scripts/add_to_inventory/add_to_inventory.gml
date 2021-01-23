// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_to_inventory(item_data){
	if (item_data.type == ITEM_Type.Weapon) {
		ds_list_add(global.weapon_inventory, item_data);
		set_weapon(item_data);
	} else if (item_data.type == ITEM_Type.Skill) {
		return set_skill(item_data);
	}
	ds_list_add(global.item_inventory, item_data);
	item_data.OnInit();
	
	return true;
}