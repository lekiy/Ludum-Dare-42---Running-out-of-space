/// @description 

depth = -y+z;

if(sign(vel_x) != 0){
	facing_dir = sign(vel_x);	
}
is_moving = (vel_x != 0 || vel_y != 0);
if(is_moving){
	image_speed = 1;	
}else{
	image_speed = 0;	
}

if(!on_grid(x, y)){
	vel_z = grav;	
}else{
	vel_z = 0;	
}

x+=vel_x;
y+=vel_y;
z+=vel_z;
