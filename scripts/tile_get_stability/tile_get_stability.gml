///@Discription

var gridx = pos_to_grid_x(x, y);
var gridy = pos_to_grid_y(x, y);

var stability = 0;

if(global.level_map[# gridx+1, gridy+0] >= 1){
	stability++;	
}
if(global.level_map[# gridx-1, gridy+0] >= 1){
	stability++;	
}
if(global.level_map[# gridx+0, gridy+1] >= 1){
	stability++;	
}
if(global.level_map[# gridx+0, gridy-1] >= 1){
	stability++;	
}
return stability;