/// @description 
instibility = (4 - tile_get_stability());
if(instibility == 0){
	alarm[0] = seconds(.5);
}else{
	alarm[0] = seconds(.1);
}