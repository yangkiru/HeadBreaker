// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_unit_die(_unit){
	if (!_unit.is_die && _unit.hp <= 0) {
		_unit.is_die = true;
		if(_unit.on_die != noone) {
			script_execute(_unit.on_die, _unit, _unit.on_die_param);
		}
	}
}