with (unit) {
	selected = false;
}

var instance = top_instance_position(mouse_x, mouse_y, unit);
if instance_exists(instance) {
	instance.selected = true;
	unit_on_click(instance);
	show_debug_message(object_get_name(instance.object_index));
}

//___________________________________________
//############################################################################################
//ERROR in
//action number 1
//of Mouse Event for Glob Left Pressed
//for object o_control:

//Unable to find instance for object index 0
// at gml_Script_unit_on_click_change_spr (line 4) - if (obj.on_hit_spr != noone)
//############################################################################################
//gml_Script_unit_on_click_change_spr (line 4)
//gml_Script_unit_on_click (line 35) -                      unit_on_click_change_spr(obj.list_on_hit_change_obj[i]);
//gml_Object_o_control_Mouse_53 (line 8) -        unit_on_click(instance);
