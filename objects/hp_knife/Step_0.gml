/// @description Insert description here
// You can write your code in this editor
var t = global.hp / global.max_hp;
x = lerp(last_x, first_x, t);
y = lerp(last_y, first_y, t);
stick.x = x + stick_x;
stick.y = y + stick_y;