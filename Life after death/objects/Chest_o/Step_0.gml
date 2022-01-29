/// @description Insert description here
// You can write your code in this editor


if (x < 0 -	sprite_width) {
	instance_destroy();
	global.chest -= 1;
}
if (chest_closed == 1) {
	image_speed = 0;
	image_index = 0;
} else if (image_index >= 5) {
	image_speed = 0;
	chest_closed = 2;
}
	