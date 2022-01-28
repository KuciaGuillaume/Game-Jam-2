// GAMEJAM EPITECH
// Nathan Catalan
// Guillaume KUcia
// Hugo Eschlimann
// Life After Death

///////////////////////////////////////////////////
///// Mouvement vers la gauche du personnage //////
///////////////////////////////////////////////////

if (Player_o.x + sprite_width > 0 && image_xscale < 0)
	x -= 10.25;
if (image_xscale > 0) {
	image_xscale *= (-1);
	x -= sprite_width;
}