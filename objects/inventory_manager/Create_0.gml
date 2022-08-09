/// @description Insert description here
// You can write your code in this editor

global.item_inventory = ds_map_create();
global.skill_objs = ds_list_create();
global.weapon_inventory = ds_list_create();
global.on_click_before = ds_list_create();
//add_to_inventory(new WoodenSword());
add_to_inventory(new Finger());