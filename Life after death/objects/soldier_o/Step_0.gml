/// @description Insert description here
// You can write your code in this editor

if (x > Player_o.x) {
	x -= rapidity;
	if (dir == 0 || dir == 2 || (dir == 1 && image_xscale > 0)) {
		image_xscale *= (-1);
		x -= sprite_width;
		dir = 1;
	}
}
if (x < Player_o.x) {
	x += rapidity - 5;
	if (dir == 0 || dir == 1) {
		image_xscale *= (-1);
		x -= sprite_width;
		dir = 2;
	}
}

if (attack == 1 && image_index >= 5) {
	sprite_index = soldier_s;
	attack = 0;
	if (e <= 0) {
		audio_play_sound(Goblin_attack_m, 1, 0);
		e = 1;
	}
	if (global.life > 0 && global.ghostmod != 1)
		global.life -= dammage;
}

if (x < -850 || global.hell == 2) {
	global.enemy -= 1;
	instance_destroy();
}