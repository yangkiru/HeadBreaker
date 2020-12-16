/// @description Insert description here
// You can write your code in this editor
image_xscale += 0.1;
image_yscale = image_xscale;
alarm[0] = 1;
t = 0;
unit.hp -= weapon.damage;
money_text.money += 1;
// instance_create_depth(mouse_x, mouse_y, 0, weapon.effect); /// mouse position
// instance_create_depth(hit_position.x, hit_position.y, 0, weapon.effect); /// hit position
hit_position.visible = true;