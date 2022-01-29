/// @description Insert description here
// You can write your code in this editor

if (chest_closed == 1 && keyboard_check_pressed(ord("E"))) {
	chest_closed = 0;
	image_index = 0;
	image_speed = 1;
}