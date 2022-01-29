/// @description Insert description here
// You can write your code in this editor

draw_self();

new_posx = x - 400;
new_posy = y + 200;

if (hp != max_hp && image_xscale < 0) {
	pc = (hp / max_hp) * 100;
	draw_healthbar(new_posx, new_posy, new_posx + 100, new_posy + 10, pc, c_black, c_red, c_lime, 0, true, true);
}

if (hp != max_hp && image_xscale > 0) {
	new_posx = x + 300;
	new_posy = y + 200;
	pc = (hp / max_hp) * 100;
	draw_healthbar(new_posx, new_posy, new_posx + 100, new_posy + 10, pc, c_black, c_red, c_lime, 0, true, true);
}