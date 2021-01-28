if (data == noone || !variable_instance_exists(data, "dot_cool")) return;

if (data.dot_cool > 0)
	data.current_dot_cool -= delta_time / 1000000;
else if (data.dot_cool < 0)
	data.current_dot_cool = 0;