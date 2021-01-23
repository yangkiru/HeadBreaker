/// @description Damage

show_debug_message("C'thun Damage");
target = global.cthun_list[| 0];
damage_to_unit(target, 1, noone);
ds_list_delete(global.cthun_list, 0);

if (ds_list_size(global.cthun_list) != 0)
	alarm[0] = 30;