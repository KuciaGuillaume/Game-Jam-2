// GAMEJAM EPITECH
// Nathan Catalan
// Guillaume KUcia
// Hugo Eschlimann
// Life After Death

//////////////////////////////
///// COODE DU PARALLAX //////
//////////////////////////////

Parallax_life1_o.x -= 2.25;
Parallax_life2_o.x -= 2.75;
Parallax_life3_o.x -= 3.25;
Parallax_life4_o.x -= 3.75;
Parallax_life5_o.x -= 5.25;

Parallax_enfer1_o.x -= 1.25;
Parallax_enfer2_o.x -= 1.75;
Parallax_enfer3_o.x -= 2.25;
Parallax_enfer4_o.x -= 2.75;
Parallax_enfer5_o.x -= 4.25;
Tilemap_pos -= 5.25;

// Déplacement de la tilemap
layer_x("Tilemap", Tilemap_pos);
layer_x("Tilemap_objects", Tilemap_pos);

// Réinitialisation du parallax
if (Parallax_life1_o.x <= -1920)
	Parallax_life1_o.x = 0;
if (Parallax_life2_o.x <= -1920)
	Parallax_life2_o.x = 0;
if (Parallax_life3_o.x <= -1920)
	Parallax_life3_o.x = 0;
if (Parallax_life4_o.x <= -1920)
	Parallax_life4_o.x = 0;
if (Parallax_life5_o.x <= -1920)
	Parallax_life5_o.x = 0;
// Réinitialisation des enfers
if (Parallax_enfer1_o.x <= -1920)
	Parallax_enfer1_o.x = 0;
	
if (Parallax_enfer2_o.x <= -1920)
	Parallax_enfer2_o.x = 0;
	
if (Parallax_enfer3_o.x <= -1920)
	Parallax_enfer3_o.x = 0;
	
if (Parallax_enfer4_o.x <= -1920)
	Parallax_enfer4_o.x = 0;
	
if (Parallax_enfer5_o.x <= -1920)
	Parallax_enfer5_o.x = 0;