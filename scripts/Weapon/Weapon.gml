function Weapon() : Item() constructor {
	damage = 0;
	type = ITEM_Type.Weapon;
	extra_damage = 0;
	is_weapon = true;
	crit_chance = 0.1;
	crit_damage = 2;
	
	OnClick = function(opponent) {
		global.coin += 1;
	}

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
} 