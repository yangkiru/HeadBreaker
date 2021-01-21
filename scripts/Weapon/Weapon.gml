function Weapon() : Item() constructor {
	damage = 0;
	extra_damage = 0;
	is_weapon = true;
	crit_chance = 0.1;
	crit_damage = 2;
	OnClick = function(opponent) {
		OnDamage(opponent);
		global.coin += 1;
	}
	
	OnDamage = function (opponent) {
		critical = random_range(0, 1);
		result = damage + extra_damage;
		extra_damage = 0;
		if (critical < crit_chance) result *= crit_damage;
		global.hp -= result;
		opponent.hp -= result;
		
		set_damage_text(result, critical < crit_chance);
	}
	
}