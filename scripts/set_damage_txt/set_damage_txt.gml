function set_damage_text(damage, is_critical, x, y){
	txt = instance_create_layer_pooled(x, y, layer_get_id("Damage_Texts"), damage_text);
	txt.x = x;
	txt.y = y;
	txt.damage = damage;
	txt.is_critical = is_critical;
	txt.alarm[0] = 1;
} 