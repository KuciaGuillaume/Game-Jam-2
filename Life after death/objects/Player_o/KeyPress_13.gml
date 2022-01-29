/// @description Insert description here
// You can write your code in this editor


if (global.attack != 1 && global.jump == 0 && global.hell != 1) {
	if (global.skin == 25)
		sprite_index = Player_attack_s;
	if (global.skin == 50)
		sprite_index = Player_attack_s50;
	if (global.skin == 75)
		sprite_index = Player_attack_s75;
	if (global.skin == 100)
		sprite_index = Player_attack_s100;
	image_index = 0;
	global.attack = 1;
}