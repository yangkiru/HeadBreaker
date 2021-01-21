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
	OnInit = function() {}
	OnClickBefore = function() {}
	OnClick = function() {}
}