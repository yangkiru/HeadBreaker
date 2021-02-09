function PiercingWeapon() : Weapon() constructor {
	struct_name = PiercingWeapon;
	mouse_speed = 0;
	damage_speed = 5;
	last_x = noone;
	last_y = noone;
	
	OnLeftDown = function () {
		mouse_speed = (mouse_y - last_y + mouse_x - last_x) * 0.5;
		if (mouse_speed < damage_speed) return;
		
		global.clicked_unit = top_instance_position(mouse_x, mouse_y, unit);
		if instance_exists(global.clicked_unit) {
			unit_on_hit(global.clicked_unit, false);
		}
	}
	
	OnLeftPressed = function () {
		last_x = mouse_x;
		last_y = mouse_y;
	}
	
	OnLeftReleased = function () {
		mouse_speed = 0;
		last_x = noone;
		last_y = noone;
	}
} 