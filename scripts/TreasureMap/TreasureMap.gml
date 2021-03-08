function TreasureMap() : Skill() constructor {
	name = "Treasure Map";
	rank = "B";
	spr = spr_treasure_map;
	cool_time = 60;
	
	OnActive = function(_skill) {
		add_coin(irandom_range(1, 100));
		if (weapon.data.name == "Shovel")
			cool_time = 20;
		else
			cool_time = 60;
	}
}