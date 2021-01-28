/// @description 쿨타임
// You can write your code in this editor
if (cool_time > 0) {
	cool_time -= delta_time / 1000000;
	t_recover = 0;
}
else if (cool_time < 0) {
	cool_time = 0;
	alarm[0] = 1;
}
else if (t_recover < 1)
	t_recover += delta_time / 100000;