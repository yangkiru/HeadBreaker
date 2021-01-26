/// @description Damage

ball = instance_create_layer_pooled(x, y, layer_get_id("Skills"), cthun_ball);
ball.origin = origin;
ball.mx = 690 + ((irandom(1) == 0 ? 1 : -1) * random_range(200, 300));
ball.my = random_range(100, 200);
ball.target = global.cthun_list[| 0];
ds_list_delete(global.cthun_list, 0);

if (ds_list_size(global.cthun_list) != 0)
	alarm[0] = 10;