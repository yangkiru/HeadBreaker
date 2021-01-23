// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Skill() : Item() constructor{
	type = ITEM_Type.Skill;
	is_targeting = false;
	OnActive = function () {}
	OnDeactive = function () {}
}