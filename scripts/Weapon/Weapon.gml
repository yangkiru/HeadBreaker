function Weapon() : Item() constructor {
	damage = 0;
	is_weapon = true;
	crit_chance = 0.1;
	crit_damage = 2;
	extra_damage[UNIT_Type.Main] = 1;
	extra_damage[UNIT_Type.Head] = 1;
	extra_damage[UNIT_Type.Body] = 1;
	extra_damage[UNIT_Type.Eye] = 1;
	extra_damage[UNIT_Type.Nose] = 1;
	extra_damage[UNIT_Type.Mouth] = 1;
}