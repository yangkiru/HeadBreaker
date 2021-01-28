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