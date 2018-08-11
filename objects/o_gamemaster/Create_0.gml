/// @description 


#region game_variables
	#macro TILE_WIDTH 90
	#macro TILE_HEIGHT 45
#endregion

width = 50;
height = 50;

var cam = view_get_camera(0);

scr_generate_map(width, height, 25, 250);
scr_build_map();

var player = instance_create_layer(0, height*TILE_HEIGHT/2, "Instances", o_player);

//camera_set_view_size(cam, width*TILE_WIDTH, (width*TILE_WIDTH)*0.75);
camera_set_view_pos(cam, player.x-camera_get_view_width(cam)/2, player.y-camera_get_view_height(cam)/2);