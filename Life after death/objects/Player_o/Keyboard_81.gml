// GAMEJAM EPITECH
// Nathan Catalan
// Guillaume KUcia
// Hugo Eschlimann
// Life After Death

///////////////////////////////////////////////////
///// Mouvement vers la gauche du personnage //////
///////////////////////////////////////////////////

if (Player_o.x + sprite_width > 0 && image_xscale < 0 && (global.press == 2 || global.press == 0) && alive == 1) {
	if (global.run == 1)
		x -= 10.25;
	else
		x -= 2.25;
	global.press = 2;
}
if (image_xscale > 0 && (global.press == 2 || global.press == 0) && alive == 1) {
	image_xscale *= (-1);
	x -= sprite_width;
	global.press = 2;
}