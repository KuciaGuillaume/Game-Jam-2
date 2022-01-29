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
	attack = 0
	global.life -= dammage;
}

if (x < -250) {
	instance_destroy();
	global.enemy -= 1;
}