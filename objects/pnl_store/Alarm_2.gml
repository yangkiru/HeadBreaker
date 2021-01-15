/// @description Item Data 설정
// You can write your code in this editor
var num = 0;
if (!ds_list_empty(store_list))
	num = ds_list_size(store_list);
show_debug_message(num);
for (var i = 0; i < num; i++) {
	store_list[| i].data = get_rand_item();
}