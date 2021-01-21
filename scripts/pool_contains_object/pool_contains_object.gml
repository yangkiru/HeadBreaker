function pool_contains_object(argument0) {
	var list = global.instance_pool
	var obj = argument0
	for (var i = 0; i < ds_list_size(list); i++)
	{
		with (list[|i])
		{
			if (obj == object_index) 
			{
				//ds_list_delete(list, i)
				return self
			}
		}
	}
	return noone


}
