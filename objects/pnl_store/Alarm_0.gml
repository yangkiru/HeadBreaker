/// @description 패스 시작
// You can write your code in this editor
x = first_x;
y = first_y;
if (path == path_store_open)
	path = path_store_close;
else
	path = path_store_open;
with(other) path_start(path, 30, path_action_stop, true);
layer_set_visible("GUI_Store", true);