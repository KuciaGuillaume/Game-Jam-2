/// @description Insert description here
// You can write your code in this editor

if (x > Player_o.x) {
	x -= rapidity;
	if (dir == 0 || dir == 2 || (dir == 1 && image_xscale < 0)) {
		dir = 1;
		image_xscale *= (-1);
		x -= sprite_width;
	}
}
if (x < Player_o.x) {
	x += rapidity - 5;
	if (dir == 0 || dir == 1) {
		dir = 2;
		image_xscale *= (-1);
		x -= sprite_width;
	}
}

if (attack == 1 && image_index >= 4) {
	sprite_index = Wolf_run_s;
	attack = 0;
	if (global.life > 0 && global.ghostmod != 1)
		global.life -= dammage;
}

if (x < -850 || global.hell == 0) {
	global.enemy -= 1;
	global.wolfs -= 1;
	instance_destroy();
}