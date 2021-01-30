/// @description Damage

ball = instance_create_layer_pooled(x, y, layer_get_id("Skills"), cthun_ball);
ball.origin = origin;
ball.target = global.cthun_list[| 0];
ball.mx = (ball.target.x + origin.x) * 0.5 + ((irandom(1) == 0 ? 1 : -1) * random_range(150, 250));
show_debug_message(ball.mx);
ball.my = (ball.target.y + origin.y) * 0.5 + random_range(-50, 50);

ds_list_delete(global.cthun_list, 0);

if (ds_list_size(global.cthun_list) != 0)
	alarm[0] = 10;