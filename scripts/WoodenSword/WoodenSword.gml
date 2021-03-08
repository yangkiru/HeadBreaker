// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function WoodenSword() : PiercingWeapon() constructor{
	name = "Wooden Sword";
	struct_name = WoodenSword;
	spr = spr_wooden_sword;
	damage = 1;
	rank = "C";
	dot_cool = 0;
	click_money = 1;
	
	//OnLeftDown = function() {
		//if (current_dot_cool > 0) return;
		
		//global.clicked_unit = top_instance_position(mouse_x, mouse_y, unit);
		
		//if (instance_exists(global.clicked_unit) && global.clicked_unit.type == UNIT_Type.Eye) {
		//	unit_on_hit(global.clicked_unit, false);
		//	current_dot_cool = dot_cool;
		//}
	//}
	
	//OnLeftPressed = function () {
	//	weapon.image_index = 1;
	//	audio_sound_gain(sfx_switch, 0.2, 0);
	//	audio_sound_pitch(sfx_switch, 0.5);
	//	audio_play_sound(sfx_switch, 10, false);
	//}
	
	//OnLeftReleased = function () {
	//	weapon.image_index = 0;
	//	audio_sound_gain(sfx_switch, 0.2, 0);
	//	audio_sound_pitch(sfx_switch, 0.6);
	//	audio_play_sound(sfx_switch, 10, false);
	//}
}