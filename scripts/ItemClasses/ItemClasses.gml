// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

enum ITEM
{
	Finger = 0,
	Blow_Hammer,
	Exscalibur	
}

function Item() constructor {
	name = "";
	price = 0;
	sale = 0;
	is_weapon = false;
	spr = noone;
}

function Weapon() : Item() constructor {
	damage = 0;
	is_weapon = true;
	crit_chance = 0.1;
	crit_damage = 2;
	extra_damage[UNIT_Type.Main] = 1;
	extra_damage[UNIT_Type.Head] = 1;
	extra_damage[UNIT_Type.Body] = 1;
	extra_damage[UNIT_Type.Eye] = 1;
	extra_damage[UNIT_Type.Nose] = 1;
	extra_damage[UNIT_Type.Mouth] = 1;
}

function Finger() : Weapon() constructor {
	name = "Finger";
	spr = spr_finger;
	damage = 1;
}

function Blow_Hammer() : Weapon() constructor {
	name = "Blow Hammer";
	spr = spr_blow_hammer;
	damage = 5;
	price = 20;
}

function Excalibur() : Weapon() constructor {
	name = "Excalibur";
	spr = spr_excalibur;
	damage = 10;
	price = 100;
}

function get_first_item(list) {
	if (ds_list_size(list) == 0) {
		show_debug_message("Get noone:ds_list_size = 0");
		return noone;
		}
	result = list[| 0];
	ds_list_delete(list, 0);
	switch(result) {
		case 1:
			show_debug_message("Get Blow_Hammer");
			return new Blow_Hammer();
		case 2:
			show_debug_message("Get Excalibur");
			return new Excalibur();
	}
	show_debug_message("Get noone");
	return noone;
}