/// @description Insert description here
// You can write your code in this editor

if (global.enemy != global.enemy_max) {
	global.enemy += 1;
	instance_create_layer(random_range(1920, 9600), global.floor - 200, "Enemies", soldier_o);
	if (i == 0) {
		soldier_o.image_xscale *= (-1);
		i = 1;
	}
}