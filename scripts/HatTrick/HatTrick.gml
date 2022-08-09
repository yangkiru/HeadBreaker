function HatTrick() : Artifact() constructor {
	name = "Hat-Trick";
	rank = "B";
	price = 33;
	spr = spr_hat_trick;
	OnInit = function () {
		ds_list_add(global.on_click_before, self);
		global.hat_trick = ds_list_create();
	}
	OnClickBefore = function (opponent) {
		// Fail
		if (ds_list_find_index(global.hat_trick, opponent) != -1) {
			ds_list_clear(global.hat_trick);
			show_debug_message("Hat-Trick Fail");
			hat_trick.image_index = 0;
			return;
		}
		ds_list_add(global.hat_trick, opponent);
		show_debug_message("Hat-Trick " + string(ds_list_size(global.hat_trick)));
		hat_trick.image_index = ds_list_size(global.hat_trick);
		
		if(ds_list_size(global.hat_trick) == 3) {
			show_debug_message("Hat-Trick Success");
			weapon.data.extra_damage += weapon.data.damage * 2;
			ds_list_clear(global.hat_trick);
		}
	}
}