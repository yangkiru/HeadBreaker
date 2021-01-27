/// @description Insert description here
// You can write your code in this editor

if (data == noone || cool_time > 0) return;
show_debug_message("skill actived");
data.OnActive(self);
cool_time = data.cool_time;
max_cool_time = data.cool_time;
alarm[1] = 1;