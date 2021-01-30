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

if(!ds_list_empty(item_list))
	ds_list_clear(item_list);
	
ds_list_add(item_list, new BlowHammer());
ds_list_add(item_list, new Excalibur());
ds_list_add(item_list, new HatTrick());
ds_list_add(item_list, new MaskOfCThun());
ds_list_add(item_list, new Laser());
ds_list_add(item_list, new TreasureMap());

ds_list_shuffle(item_list);

for (i = 0; i < min(ds_list_size(store_list), ds_list_size(item_list)); i++){
	store_list[| i].data = item_list[| i];
}