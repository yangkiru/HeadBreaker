/// @description Damage

ball = instance_create_layer_pooled(x, y, layer_get_id("Skills"), cthun_ball);
ball.target = global.cthun_list[| 0];
ball.mx = (ball.target.x + mouse_x) * 0.5 + ((irandom(1) == 0 ? 1 : -1) * random_range(150, 250));
ball.my = (ball.target.y + mouse_y) * 0.5 + random_range(-50, 50);
ball.ox = mouse_x;
ball.oy = mouse_y;

ds_list_delete(global.cthun_list, 0);

if (ds_list_size(global.cthun_list) != 0)
	alarm[0] = 10;