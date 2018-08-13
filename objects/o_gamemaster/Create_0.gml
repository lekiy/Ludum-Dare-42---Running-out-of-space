/// @description 


#region game_variables
	#macro TILE_WIDTH 90
	#macro TILE_HEIGHT 45
	
	global.game_time = 0;
#endregion

width = 25;
height = 25;


generate_map(width, height, 25, 250);
build_map();

player = instance_create_layer(grid_pos_x(width-2, height)/2, grid_pos_y(width, height)/2, "Instances", o_player);

spawn_oblisks(6);

var cam = view_get_camera(0);
camera_set_view_size(cam, camera_get_view_width(cam)*0.75, camera_get_view_height(cam)*0.75);
