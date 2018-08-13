/// @description 
draw_sprite(sprite_index, image_index, x+shake_x+deco_offset_x, y+z+shake_y+deco_offset_y);

//if(flash > 0){
//the next line of code only needs to be executed once.
new_color = shader_get_uniform(shader_silhouette,"new_color");
shader_set(shader_silhouette);
shader_set_uniform_f(new_color, 85/256, 1, 221/256, flash);
draw_sprite_ext(sprite_index, image_index, x+shake_x+deco_offset_x, y+z+shake_y+deco_offset_y, 1, 1, 0, c_white, flash);
shader_reset();
//}