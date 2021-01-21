function instance_pooling_cleanup() {
	for (var i = 0; i < ds_list_size(global.instance_pool); ++i)
	{
		with (global.instance_pool[|i])
		{
			instance_destroy(self)
		}
	}
	ds_list_destroy(global.instance_pool)


}
