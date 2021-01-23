// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_unit_die(_unit){
	if (!_unit.is_die && _unit.hp <= 0) {
		_unit.is_die = true;
		idx = ds_list_find_index(global.alive_units, _unit);
		if (idx >= 0) ds_list_delete(global.alive_units, idx);
		if(_unit.on_die != noone) {
			script_execute(_unit.on_die, _unit, _unit.on_die_param);
		}
	}
}