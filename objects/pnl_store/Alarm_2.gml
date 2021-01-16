/// @description Item Data 설정
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

ds_list_clear(item_list);
for (var i = 1; i <= ITEM.Exscalibur; i++) {
	ds_list_add(item_list, i);
	show_debug_message(i);
}
ds_list_shuffle(item_list);

for (var i = 0; i < ds_list_size(store_list); i++) {
	store_list[| i].data = get_first_item(item_list);
}