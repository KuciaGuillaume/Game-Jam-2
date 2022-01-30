/// @description Insert description here
// You can write your code in this editor

if (chest_closed == 1 && keyboard_check_pressed(ord("E"))) {
	chest_closed = 0;
	image_index = 0;
	image_speed = 1;
	global.e = 1;
	audio_play_sound(Chest_m, 1, 0);

	n1 = random_range(1, 100);
	show_debug_message(n1);
	if (n1 >= 1 && n1 <= 70)
		global.dammage += random_range(0, 15);
	else {
		n1 = random_range(1, 100);
		if (n1 >= 1 && n1 <= 90)
			global.potion += 1;
		else
			global.potion += random_range(2, 5);
	}
}