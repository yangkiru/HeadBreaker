function add_items_to_list(list) {
	
	// Weapon
	add_function(list, BlowHammer);
	add_function(list, Excalibur);
	add_function(list, Shovel);
	add_function(list, Laser);
	add_function(list, WoodenSword);
	
	//Skill
	add_function(list, MaskOfCThun);
	add_function(list, TreasureMap);
	add_function(list, RabbitDoll);
	
	//Artifact
	add_function(list, HatTrick);
	add_function(list, AlarmClock);
}

function add_function(list, _type) {
	found = global.item_inventory[? _type];
	show_debug_message(found);
	if (is_undefined(found))
		ds_list_add(list, new _type());
}