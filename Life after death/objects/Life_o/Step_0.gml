/// @description Insert description here
// You can write your code in this editor

if (Player_o.image_xscale > 0) {
	x = Player_o.x + 20;
	y = Player_o.y - 14
} else {
	if (global.run != 1)
		x = Back_life_o.x - 7;
	else
		x = Back_life_o.x - 15;
	y = Player_o.y - 14
}


image_xscale = (global.life * 0.788) / global.hp_max;
if (global.hell == 2 && global.life > 20)
	global.life -= 0.01;

if (old_life != global.life && pass == 0) {
	image_index = 1;
	pass += 1;
} else if (pass > 100) {
	image_index = 0;
	pass = 0;
} else {
	pass += 1;
	if (pass < 50 && global.hell == 2)
		image_index = 0;
	if (pass > 50 && global.hell == 2 && global.life > 20)
		image_index = 1;
}
old_life = global.life;