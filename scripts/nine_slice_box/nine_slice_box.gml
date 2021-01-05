// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function nine_slice_box(sprite, x1, y1, x2, y2, xscale, yscale, alpha){
	var _size = sprite_get_width(sprite) / 3;
	var _w = x2 - x1;
	var _h = y2 - y1;
	var _columns = _w div _size;
	var _rows = _h div _size;
	
	// MIDDLE
	//draw_sprite_part_ext(sprite, -1, _size, _size, _w-_size, _h-_size, x1+_size, y1+_size, xscale, yscale, c_white, alpha);
	
	//CORNERS
	//top left
	draw_sprite_part_ext(sprite, -1, 0, 0, _size, _size, x1, y1, xscale, yscale, c_white, alpha);
	//top right
	draw_sprite_part_ext(sprite, -1, _size*2, 0, _size, _size, x1+(_columns * _size), y1, xscale, yscale, c_white, alpha);
	//bottom left
	draw_sprite_part_ext(sprite, -1, 0, _size*2, _size, _size, x1, y1+(_rows * _size), xscale, yscale, c_white, alpha);
	//bottom right
	draw_sprite_part_ext(sprite, -1, _size*2, _size*2, _size, _size, x1+(_columns * _size), y1+(_rows*_size), xscale, yscale, c_white, alpha);
	//EDGES
	for (var i = yscale; i < (_rows-xscale+1); i++) {
		//left edge
		draw_sprite_part_ext(sprite, -1, 0, _size, _size, _size, x1, y1+(i*_size), xscale, yscale, c_white, alpha);
		//right edge
		draw_sprite_part_ext(sprite, -1, _size*2, _size, _size, _size, x1+(_columns*_size), y1+(i*_size), xscale, yscale, c_white, alpha);
	}
	
	for (var i = xscale; i < (_columns-yscale+1); i++) {
		//top edge
		draw_sprite_part_ext(sprite, -1, _size, 0, _size, _size, x1+(i*_size), y1, xscale, yscale, c_white, alpha);
		//bottome edge
		draw_sprite_part_ext(sprite, -1, _size, _size*2, _size, _size, x1+(i*_size), y1+(_rows*_size), xscale, yscale, c_white, alpha);
	}
	//MIDDLE
	for (var i = xscale; i < (_columns-yscale+1); i += _size/2+1) {
		for (var j = yscale; j < (_rows-xscale+1); j += _size/2+1) {
			draw_sprite_part_ext(sprite, -1, _size, _size, _size, _size, x1+(i*_size), y1+(j*_size), xscale, yscale, c_white, alpha);
		}
	}
}