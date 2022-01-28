// GAMEJAM EPITECH
// Nathan Catalan
// Guillaume KUcia
// Hugo Eschlimann
// Life After Death

///////////////////////////////////////////////////
///// Mouvement vers la droite du personnage //////
///////////////////////////////////////////////////

if (x < (1920 - sprite_width))
	x += 15.25;
if (image_xscale < 0) {
	image_xscale *= (-1);
	x -= sprite_width;
}