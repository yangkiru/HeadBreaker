with (unit) {
	selected = false;
}

var instance = top_instance_position(mouse_x, mouse_y, unit);
if instance_exists(instance) {
	instance.selected = true;
	unit_on_click(instance);
	show_debug_message(object_get_name(instance.object_index));
}