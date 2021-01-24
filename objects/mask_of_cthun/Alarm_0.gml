/// @description Damage

show_debug_message("C'thun Damage");
target = global.cthun_list[| 0];
damage_to_unit(target, 1, noone, target.x, target.y);
ds_list_delete(global.cthun_list, 0);
audio_sound_pitch(hit_sfx, random_range(0.5, 0.7));
audio_play_sound(hit_sfx, 10, false);
add_money(1);


if (ds_list_size(global.cthun_list) != 0)
	alarm[0] = 10;