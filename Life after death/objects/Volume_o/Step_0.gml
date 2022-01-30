/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button(mb_left) && (mouse_y >= y && mouse_y <= y + sprite_height)) {
	if (x <= x_max && x >= x_min) {
		if (mouse_x <= x_max && mouse_x >= x_min)
			x = mouse_x - sprite_width/2;
	}
}
x_vol = (x - x_min);
x_volume = (x_vol * 100) / (x_max - x_min);
audio_sound_gain(Menu_m, x_volume / 100, 0);
audio_sound_gain(Sound_in_earth_m, x_volume / 100, 0);
audio_sound_gain(Sound_in_hell_m, x_volume / 100, 0);
if (x < x_min)
	x = x_min + 1;