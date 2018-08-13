///@Discription
///@arg list

var list = argument0;

var list_size = ds_list_size(list);
var random_id = irandom(list_size);
return list[| random_id];