// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MaskOfCThun() : Skill() constructor{
	name = "Mask of C'Thun";
	spr = spr_mask_of_cthun;
	rank = "C";
	cool_time = 5;
	price = 7;
	instance = noone;
	
	OnInit = function(_skill) {
		global.cthun_list = ds_list_create();
		instance = instance_create_layer(0, 0, "Skills", mask_of_cthun);
	}
	
	OnActive = function(_skill) {
		for (i = 0; i < 10; i++;) {
			rnd = irandom_range(0, ds_list_size(global.alive_units) - 1);
			ds_list_add(global.cthun_list, global.alive_units[| rnd]);
		}
		instance.alarm[0] = 1;
	}
}