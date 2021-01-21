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
	
	//ds_list_add(coin_list, i_coin_store_1);
	//ds_list_add(coin_list, i_coin_store_2);
	//ds_list_add(coin_list, i_coin_store_3);
	//ds_list_add(coin_list, i_coin_store_4);
	//ds_list_add(coin_list, i_coin_store_5);
	//ds_list_add(coin_list, i_coin_store_6);
	
	//ds_list_add(check_box_list, i_btn_check_box_1);
	//ds_list_add(check_box_list, i_btn_check_box_2);
	//ds_list_add(check_box_list, i_btn_check_box_3);
	//ds_list_add(check_box_list, i_btn_check_box_4);
	//ds_list_add(check_box_list, i_btn_check_box_5);
	//ds_list_add(check_box_list, i_btn_check_box_6);
	
	//ds_list_add(check_list, i_check_1);
	//ds_list_add(check_list, i_check_2);
	//ds_list_add(check_list, i_check_3);
	//ds_list_add(check_list, i_check_4);
	//ds_list_add(check_list, i_check_5);
	//ds_list_add(check_list, i_check_6);
}

if(!ds_list_empty(item_list))
	ds_list_clear(item_list);
	
ds_list_add(item_list, new Blow_Hammer());
ds_list_add(item_list, new Excalibur());
ds_list_add(item_list, new Hat_Trick());

//for (i = 0; i < ds_list_size(store_list); i++){
//	//store_list[| i].
//}

ds_list_shuffle(item_list);

for (i = 0; i < ds_list_size(item_list); i++){
	store_list[| i].data = item_list[| i];
}