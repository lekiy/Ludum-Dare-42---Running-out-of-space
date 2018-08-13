///@Discription

var gridx = pos_to_grid_x(x, y);
var gridy = pos_to_grid_y(x, y);

var stability = 0;

for(var col = -1; col <= 1; col++){
	for(var row = -1; row <= 1; row++){
		if(global.level_map[# gridx+col, gridy+row] >= 1){
			stability++;	
		}
	}
}

return stability;