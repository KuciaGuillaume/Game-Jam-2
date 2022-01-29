/// @description Insert description here
// You can write your code in this editor

if (global.hell == 0 && global.chest == 0) {
	instance_create_layer(random_range(1920, 9600), global.floor + 30, "Player", Chest_o);
	global.chest += 1;
	global.e = 0;
}
