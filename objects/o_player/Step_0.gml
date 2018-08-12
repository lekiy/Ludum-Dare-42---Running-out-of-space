/// @description 

// Inherit the parent event
event_inherited();

x_dir = -keyboard_check(ord("A"))+keyboard_check(ord("D"));
y_dir = -keyboard_check(ord("W"))+keyboard_check(ord("S"));

vel_x = ground_speed*x_dir;
vel_y = ground_speed*y_dir;

if(!on_grid(x, y)){
	vel_z = grav;	
}else{
	vel_z = 0;	
}

x+=vel_x;
y+=vel_y;
z+=vel_z;

//show_debug_message("X: "+string(pos_to_grid_x(x, y))+" Y: "+string(pos_to_grid_y(x, y)));
