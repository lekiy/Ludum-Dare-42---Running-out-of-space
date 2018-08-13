/// @description 
var tiles = get_tiles_in_radius(pos_to_grid_x(x, y), pos_to_grid_y(x, y), aura_radius_in_tiles);
for(var i = 0; i < ds_list_size(tiles); i++){
	var tile = tiles[| i];
	if(instance_exists(tile)){
		tile.alarm[0] = seconds(10);
		tile.is_stablized = true;
		tile.flash = 0.4;
	}
}
ds_list_destroy(tiles);
alarm[0] = seconds(3);