/// @description 
if(keyboard_check_pressed(vk_space)){
	ds_grid_destroy(global.level_map);
	room_restart();	
	
}

global.game_time++;

var cam = view_get_camera(0);
camera_set_view_pos(cam, player.x-camera_get_view_width(cam)/2, player.y-camera_get_view_height(cam)/2);