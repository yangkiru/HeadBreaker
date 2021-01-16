// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Item() constructor {
	name = "";
	item = noone;
	price = 0;
	sale = 0;
}

function Weapon() : Item() constructor {
	damage = 0;
}

function Blow_Hammer() : Weapon() constructor {
	name = "Blow Hammer";
	item = blow_hammer;
	damage = 1;
}

function Excalibur() : Weapon() constructor {
	name = "Excalibur";
	item = excalibur;
	damage = 10;
}

function get_rand_item() {
	rand = irandom_range(0, 1);
	
	switch(rand) {
		case 0:
			show_debug_message("Get Blow_Hammer");
			return new Blow_Hammer();
		case 1:
			show_debug_message("Get Excalibur");
			return new Excalibur();
	}
	show_debug_message("Get noone");
	return noone;
}