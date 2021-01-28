/// @description Insert description here
// You can write your code in this editor

randomize();
global.hp = 1000000000;
global.max_hp = 1000000000;
global.is_die = false;
global.coin = 0;
global.clicked_unit = noone;
global.last_hit[0] = noone;
global.last_hit[1] = noone;
global.last_hit[2] = noone;
global.alive_units = ds_list_create();
room_goto_next();