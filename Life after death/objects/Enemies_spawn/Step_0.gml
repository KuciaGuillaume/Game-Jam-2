/// @description Insert description here
// You can write your code in this 

wolfs_max = (global.enemy_max - 16);
Skeleton_max = 16;


show_debug_message(global.enemy);
show_debug_message(global.enemy_max);
if (global.enemy < global.enemy_max && global.hell == 0) {
	global.enemy += 1;
	instance_create_layer(random_range(1920, 9600), global.floor - 200, "Enemies", soldier_o);
	if (i == 0) {
		soldier_o.image_xscale *= (-1);
		i = 1;
	}
}
if (global.hell != 0 && global.hell != 3 && global.enemy < global.enemy_max && global.hell == 2 && (global.enemy + 8 <= global.enemy_max) && global.skeleton < Skeleton_max ) {
	global.enemy += 8;
	global.skeleton += 8;
	instance_create_layer(random_range(1920, 14000), global.floor - 200, "Enemies", Big_skeleton_o);
	if (i1 == 0) {
		Big_skeleton_o.image_xscale *= (-1);
		i1 = 1;
	}
}
if (global.enemy < global.enemy_max && global.hell == 2 && global.wolfs < wolfs_max && global.hell != 0 && global.hell != 3) {
	global.enemy += 1;
	global.wolfs += 1;
	audio_play_sound(Wolf_arrived, 1, 0);
	instance_create_layer(random_range(1920, 9600), global.floor - 20, "Enemies", Wolf_o);
	if (i2 == 0) {
		Wolf_o.image_xscale *= (-1);
		i2 = 1;
	}
}

