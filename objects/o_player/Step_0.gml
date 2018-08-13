/// @description 

// Inherit the parent event
event_inherited();

x_dir = -keyboard_check(ord("A"))+keyboard_check(ord("D"));
y_dir = -keyboard_check(ord("W"))+keyboard_check(ord("S"));

vel_x = ground_speed*x_dir;
vel_y = ground_speed*y_dir;

if(keyboard_check_pressed(ord("E")) && !is_attacking){
	is_attacking = true;
	var obelisk = instance_nearest(x, y, o_oblisk);
	obelisk.hp -= 1;
	sprite_index = s_player_attack;
	image_speed = 0;
}


//show_debug_message("X: "+string(pos_to_grid_x(x, y))+" Y: "+string(pos_to_grid_y(x, y)));
