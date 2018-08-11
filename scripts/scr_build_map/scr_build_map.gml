///@Disctiption sets up game map

var map_width = ds_grid_width(global.level_map);
var map_height = ds_grid_height(global.level_map);

for(var col = 0; col < map_width; col++){
	for(var row = 0; row < map_height; row++){
		
		if(global.level_map[# col, row] >= 1){
			instance_create_layer(+col*TILE_HEIGHT-row*TILE_HEIGHT, row*floor(TILE_HEIGHT/2)+col*floor(TILE_HEIGHT/2), "Tiles", o_tile);
			show_debug_message("Tile Created");
		}
	}
}