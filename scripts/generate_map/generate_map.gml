///@Description
///max_width
///max_height
///sections
///max_tiles_per_section

var width = argument0;
var height = argument1;
var grid = ds_grid_create(width, height);

var xx = floor(width/2);
var yy = floor(height/2);

var layers = argument2;
var steps = 100;
var steps_max = argument3;

for(var j = 0; j < layers; j++){
	xx = width/2;
	yy = height/2;
	steps = irandom_range(round(steps_max*0.1), steps_max);
	for(var i = 0; i < steps; i++){
		grid[# xx, yy] = 1;
		var next = irandom(4);
		switch(next){
			case 0: if(xx < width) {xx++;} break;
			case 1: if(yy < height) {yy++;} break;
			case 2: if(xx > 0) {xx--;} break;
			case 3: if(yy > 0) {yy--;} break;
		}
	}
}

for(var yy = 0; yy < height; yy++){
	for(var xx = 0; xx < width; xx++){
		var solid_count = 0;
		for(var yy1 = yy-1; yy1 <= yy+1; yy1++){
			for(var xx1 = xx-1; xx1 <= xx+1; xx1++){
				if(grid[# xx1, yy1] > 0){
					solid_count++;	
				}
			}	
		}
		if(grid[# xx, yy] == 0){
			if(solid_count > 4){
				grid[# xx, yy] = 1;	
			}
		}
	}
}

for(var yy = 0; yy < height; yy++){
	for(var xx = 0; xx < width; xx++){
		if(grid[# xx, yy] > 0){
			grid[# xx, yy] = 1;
			for(var yy1 = yy-1; yy1 <= yy+1; yy1++){
				for(var xx1 = xx-1; xx1 <= xx+1; xx1++){
					if(grid[# xx1, yy1] == 0){
						grid[# xx1, yy1] = -1;
					}
				}	
			}
		}
		
		
		
	}
}

global.level_map = grid;