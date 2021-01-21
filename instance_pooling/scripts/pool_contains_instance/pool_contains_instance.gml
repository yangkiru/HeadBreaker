function pool_contains_instance(argument0) {
	var list = global.instance_pool
	var inst = argument0
	for (var i = 0; i < ds_list_size(list); i++)
	{
		with (list[|i])
		{
			if (inst == self.id) 
			{
				//ds_list_delete(list, i)
				return self
			}
		}
	}
	return noone


}
