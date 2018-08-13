/// @description 
depth = -y;
flash-= 0.02;

if(!is_stablized){
	if(instibility > 2){
		hp-=instibility;
	}
}else{
	hp++
	hp = min(hp, hp, max_hp);
}
	

if(hp<=0){
	falling = true;
}

if(falling){
	z+=grav;
	grid_set_tile(pos_to_grid_x(x, y), pos_to_grid_y(x, y), 0);
}else{
	shake_tile((1-hp/max_hp)*5);
}

