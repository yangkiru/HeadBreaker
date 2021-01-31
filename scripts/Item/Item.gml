// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

enum ITEM_Type
{
	Nothing = 0,
	Weapon,
	Artifact,
	Skill
}

function Item() constructor {
	name = "";
	price = 0;
	sale = 0;
	type = ITEM_Type.Nothing;
	spr = noone;
	OnInit = function() {}
}

function add_items_to_list(list) {
	// Weapon
	ds_list_add(list, new BlowHammer());
	ds_list_add(list, new Excalibur());
	ds_list_add(list, new Shovel());
	ds_list_add(list, new Laser());
	
	//Skill
	ds_list_add(list, new MaskOfCThun());
	ds_list_add(list, new TreasureMap());
	ds_list_add(list, new RabbitDoll());
	
	//Artifact
	ds_list_add(list, new HatTrick());
	ds_list_add(list, new AlarmClock());
}