function instance_pooling_clear_pool() {
	for (var i = 0; i < ds_list_size(global.instance_pool); ++i)
	{
		with (global.instance_pool[|i])
		{
			instance_destroy(self)
		}
	}
	ds_list_clear(global.instance_pool)


}
