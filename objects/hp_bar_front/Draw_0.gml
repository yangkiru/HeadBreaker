/// @description Insert description here
// You can write your code in this editor

var spriteWidth = sprite_get_width(spr_hp_full);
var spriteHeight = sprite_get_height(spr_hp_full);
var hpPercent = global.hp / global.max_hp;

draw_sprite_part_ext(sprite_index, 0, 0, 0, spriteWidth*hpPercent, spriteHeight, x, y, image_xscale, image_yscale, c_white, 1);

draw_healthbar(0, 0, 200, 50, global.hp / global.max_hp, c_black, c_red, c_lime, 0, true, true);