// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_skill(data){
	for (i = 0; i < ds_list_size(global.skill_objs); i++) {
		_skill = ds_list_find_value(global.skill_objs, i);
		if (!is_undefined(_skill) && _skill.data == noone) {
			_skill.data = data;
			_skill.data.OnInit();
			return true;
		}
	}
	return false;
}