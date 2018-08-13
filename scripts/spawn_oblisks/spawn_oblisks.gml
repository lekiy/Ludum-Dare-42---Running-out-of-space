///@Discription
///@arg total_count

var total = argument0;
var count = 0;
var start_oblisk = instance_create_layer(grid_pos_x(width, height)/2, grid_pos_y(width, height)/2, "Instances", o_oblisk);

var oblisks_list = ds_list_create();

ds_list_add(oblisks_list, start_oblisk);

count++;
var offset_radius = 2;

var base_dist = start_oblisk.aura_radius_in_tiles*2;
var limit = 0;
while(count < total){
	var base_oblisk = get_random_list_item(oblisks_list);
	var spawn_x = pos_to_grid_x(base_oblisk.x, base_oblisk.y);
	var spawn_y = pos_to_grid_y(base_oblisk.x, base_oblisk.y);
	switch(irandom(4)){
		case 0: spawn_x+=base_dist; break;
		case 1: spawn_x-=base_dist; break;
		case 2: spawn_y+=base_dist; break;
		case 3: spawn_y-=base_dist; break;
	}
	
	spawn_x += irandom_range(-offset_radius, offset_radius);
	spawn_y += irandom_range(-offset_radius, offset_radius);
	
	if(global.level_map[# spawn_x, spawn_y] >= 1){
		var can_spawn = true;
		for(var i = 0; i < ds_list_size(oblisks_list); i++){
			var check_oblisk_x = pos_to_grid_x(oblisks_list[| i].x, oblisks_list[| i].y);
			var check_oblisk_y = pos_to_grid_y(oblisks_list[| i].x, oblisks_list[| i].y);
			show_debug_message(point_distance(spawn_x, spawn_y, check_oblisk_x, check_oblisk_y));
			if(point_distance(spawn_x, spawn_y, check_oblisk_x, check_oblisk_y ) < base_dist/2+2){
				can_spawn = false;
				break;
			}
		}
		if(can_spawn){
			var new_oblisk = instance_create_layer(grid_pos_x(spawn_x, spawn_y), grid_pos_y(spawn_x, spawn_y), "Instances", o_oblisk);
			show_debug_message("Created Oblisk at: x "+string(grid_pos_x(spawn_x, spawn_y))+" y "+string(grid_pos_y(spawn_x, spawn_y)));
			ds_list_add(oblisks_list, new_oblisk);
			count++;
		}
	}
	limit++;
	if(limit >= 100){
		break;	
	}
}

ds_list_destroy(oblisks_list);