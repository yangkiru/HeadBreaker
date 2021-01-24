// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Mask_of_CThun() : Skill() constructor{
	name = "Mask of C'Thun";
	spr = spr_hat_trick;
	price = 7;
	cool_time = 3;
	
	OnInit = function() {
		global.cthun_list = ds_list_create();
		instance_create_layer(0, 0, "Skills", mask_of_cthun);
	}
	
	OnActive = function() {
		for (i = 0; i < 10; i++;) {
			rnd = irandom_range(0, ds_list_size(global.alive_units) - 1);
			ds_list_add(global.cthun_list, global.alive_units[| rnd]);
		}
		mask_of_cthun.alarm[0] = 1;
	}
}