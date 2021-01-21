function instance_destroy_pooled(argument0) {

	var instance = argument0
	if (pool_contains_instance(instance) != noone) {exit}
	with (instance)
	{
		__reenable = phy_active
		if (phy_active)
		{
			phy_position_x = -500
			phy_position_y = -500
			phy_speed_x = 0
			phy_speed_y = 0
			phy_linear_velocity_x = 0
			phy_linear_velocity_y = 0
			phy_angular_velocity = 0
			phy_active = false
			//__reenable = true
		}
		visible = false
		x = -500
		y = -500
		image_index = 0
		event_perform(ev_destroy, 0)
	}
	if (ds_list_find_index(global.instance_pool, instance) == -1) ds_list_add(global.instance_pool, instance)


}
