/// @description Insert description here
// You can write your code in this editor

if (global.attack == 1 && Player_o.image_index >= 4 && Cube_o.alive == 1) {
	Cube_o.hp -= 25;
	if (Cube_o.hp <= 0) {
		Cube_o.visible = false;
		Cube_o.alive = 0;
	}
}
if (global.life > 0 && Cube_o.alive != 0) {
	global.life -= 0.5;
	Life_o.image_index = 1;
}