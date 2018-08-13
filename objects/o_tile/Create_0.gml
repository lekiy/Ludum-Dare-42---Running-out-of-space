/// @description 

is_stablized = false;
instibility = (9 - tile_get_stability());
alarm[0] = seconds(1);
falling = false;
max_hp = seconds(random_range(1, 5));
hp = max_hp;
grav = 8;
z = 0;
image_speed = 0;
image_index = choose(0, 1);
flip = choose(1, -1);
shake_x = 0;
shake_y = 0;
deco_offset_x = random_range(-2, 2);
deco_offset_y = random_range(-5, 5);
flash = 0;