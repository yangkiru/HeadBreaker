/// @description 리스트 초기화
// You can write your code in this editor

// 리스트 입력
if (ds_list_empty(store_list)) {
	ds_list_add(store_list, i_txt_store_item_1);
	ds_list_add(store_list, i_txt_store_item_2);
	ds_list_add(store_list, i_txt_store_item_3);
	ds_list_add(store_list, i_txt_store_item_4);
	ds_list_add(store_list, i_txt_store_item_5);
	ds_list_add(store_list, i_txt_store_item_6);
}

if(!ds_list_empty(item_list))
	ds_list_clear(item_list);

add_items_to_list(item_list);

ds_list_shuffle(item_list);
size = ds_list_size(item_list)
show_debug_message(size);
for (i = 0; i < ds_list_size(store_list); i++){
	if (i > size)
		store_list[| i].data = noone;
	else
		store_list[| i].data = item_list[| i];
}

for (i = 0; i < ds_list_size(check_box_list); i++){
	check_box_list[| i].is_bought = false;
}

t = shop_cool;
is_shop_reset = true;

if layer_get_visible("GUI_Store")
	alarm[0] = 10;