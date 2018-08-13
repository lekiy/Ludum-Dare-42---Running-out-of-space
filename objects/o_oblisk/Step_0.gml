/// @description 
glow_alpha = wave(1, 0.05);
//show_debug_message(glow_alpha);
float = wave(15, 0.035);

if(hp < 1){
	instance_destroy();	
}

hp += regen_rate;
hp = clamp(hp, 0, max_hp);