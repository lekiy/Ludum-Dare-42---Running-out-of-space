///@Discription
///@arg xx
///@arg yy
///@arg radius

var start_x = argument0;
var start_y = argument1+1;
var radius = argument2;

var contained_tiles = ds_list_create();
for(var col = 0; col < ds_grid_width(global.level_map); col++){
	for(var row = 0; row < ds_grid_height(global.level_map); row++){
		if(round(point_distance(start_x, start_y, col, row)) <= radius){
			//show_debug_message(round(point_distance(start_x, start_y, col, row)));
			var tile = get_grid_tile(col, row);
			if(instance_exists(tile)){
				ds_list_add(contained_tiles, tile);	
			}
		}
	}
}