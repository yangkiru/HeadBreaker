function DotWeapon() : Weapon() constructor {
	dot_cool = 0.5;
	current_dot_cool = 0;
	
	OnLeftDown = function () {
		if (current_dot_cool > 0) return;
		
		global.clicked_unit = top_instance_position(mouse_x, mouse_y, unit);
		if instance_exists(global.clicked_unit) {
			unit_on_hit(global.clicked_unit);
			current_dot_cool = dot_cool;
		}
	}
	
	OnLeftPressed = noone;
	
	OnLeftReleased = noone;
	//data.current_dot_cool = data.dot_cool;
} 