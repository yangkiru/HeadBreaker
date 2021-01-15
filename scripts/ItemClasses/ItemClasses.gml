// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Item() constructor {
	name = "";
	item = noone;
	price = 0;
	sale = 0;
	is_sell = false;
}

function Weapon() : Item() constructor {
	damage = 0;
}

function Blow_Hammer() : Weapon() constructor {
	name = "Blow Hammer";
	item = blow_hammer;
	is_sell = false;
	damage = 1;
}

function Excalibur() : Weapon() constructor {
	name = "Excalibur";
	item = excalibur;
	is_sell = true;
	damage = 10;
}