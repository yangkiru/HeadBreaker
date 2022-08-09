/// @description Insert description here
// You can write your code in this editor
shop_cool = 60;
t = shop_cool;
is_shop_reset = true;
first_x = x;
first_y = y;
layer_set_visible("GUI_Store", false);

store_list = ds_list_create();
item_list = ds_list_create();
coin_list = ds_list_create();
check_box_list = ds_list_create();
check_list = ds_list_create();

alarm[2] = 1;