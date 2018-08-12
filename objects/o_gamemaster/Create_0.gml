/// @description 


#region game_variables
	#macro TILE_WIDTH 90
	#macro TILE_HEIGHT 45
#endregion

width = 25;
height = 25;


generate_map(width, height, 25, 250);
build_map();

player = instance_create_layer(grid_pos_x(width-2, height)/2, grid_pos_y(width, height)/2, "Instances", o_player);

oblisk = instance_create_layer(grid_pos_x(width+2, height)/2, grid_pos_y(width, height)/2, "Instances", o_oblisk);


//camera_set_view_size(cam, width*TILE_WIDTH, (width*TILE_WIDTH)*0.75);
