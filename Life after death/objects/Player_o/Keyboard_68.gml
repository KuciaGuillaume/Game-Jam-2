// GAMEJAM EPITECH
// Nathan Catalan
// Guillaume KUcia
// Hugo Eschlimann
// Life After Death

///////////////////////////////////////////////////
///// Mouvement vers la droite du personnage //////
///////////////////////////////////////////////////

if (x < (1920 - sprite_width) && (global.press == 1 || global.press == 0)) {
	if (global.run == 1)
		x += 15.25;
	else
		x += 10.25;
	global.press = 1;
}
if (image_xscale < 0 && (global.press == 1 || global.press == 0)) {
	image_xscale *= (-1);
	x -= sprite_width;
	global.press = 1;
}