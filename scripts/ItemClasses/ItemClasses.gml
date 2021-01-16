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
	item = noone;
	price = 0;
	sale = 0;
}

function Weapon() : Item() constructor {
	damage = 0;
}

function Finger() : Weapon() constructor {
	name = "Finger";
	item = w_finger;
	damage = 1;
	
}

function Blow_Hammer() : Weapon() constructor {
	name = "Blow Hammer";
	item = w_blow_hammer;
	damage = 5;
	price = 20;
}

function Excalibur() : Weapon() constructor {
	name = "Excalibur";
	item = w_excalibur;
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