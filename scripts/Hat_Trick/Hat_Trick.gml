function Hat_Trick() : Artifact() constructor {
	name = "Hat-Trick";
	price = 33;
	spr = spr_hat_trick;
	OnInit = function () {
		global.on
		global.hat_trick = ds_list_create();
	}
	OnClick = function (opponent) {
		// Fail
		if (ds_list_find_index(global.hat_trick, opponent) != -1) {
			ds_list_clear(global.hat_trick);
			show_debug_message("Hat-Trick Fail");
			return;
		}
		ds_list_add(global.hat_trick, opponent);
		show_debug_message("Hat-Trick " + string(ds_list_size(global.hat_trick)));
		
		if(ds_list_size(global.hat_trick) == 3) {
			show_debug_message("Hat-Trick Success");
			weapon.data.extra_damage += weapon.data.damage * 2;
		}
	}
}