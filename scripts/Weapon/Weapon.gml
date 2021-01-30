function Weapon() : Item() constructor {
	damage = 0;
	type = ITEM_Type.Weapon;
	extra_damage = 0;
	crit_chance = 0.1;
	crit_damage = 2;
	click_money = 1;

	GetDamage = function (opponent, is_critical) {
		critical = random_range(0, 1);
		result = damage + extra_damage;
		extra_damage = 0;
		if (is_critical != noone) {
			is_critical[@ 0] = critical < crit_chance;
			if (is_critical[0]) result *= crit_damage;
		}

		return result;
	}
	
	OnLeftDown = noone;
	
	OnLeftPressed = function () {
		global.clicked_unit = top_instance_position(mouse_x, mouse_y, unit);
		if instance_exists(global.clicked_unit) {
			unit_on_hit(global.clicked_unit, true);
		}
	}
	
	OnLeftReleased = noone;
} 