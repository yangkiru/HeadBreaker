/// @description 유닛이 죽는지 체크
// You can write your code in this editor

if (!is_die && hp <= 0) {
	is_die = true;
	if(on_die != noone) {
		script_execute(on_die, self, on_die_param);
	}
}