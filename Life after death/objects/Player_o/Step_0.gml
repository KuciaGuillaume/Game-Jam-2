// GAMEJAM EPITECH
// Nathan Catalan
// Guillaume Kucia
// Hugo Eschlimann
// Life After Death

// Mouvement du personnage à l'arret
if (Player_o.x > 0 && image_xscale > 0)
	Player_o.x -= 5.25;
	
if (Player_o.x + sprite_width > 0 && image_xscale < 0)
	Player_o.x -= 5.25;
	
// Gravité
if (Player_o.y < global.floor)
	Player_o.y += 30.81 ;
	
// jump et double jump
if (global.jump == 1 || global.jump == 2) {
	Player_o.y -= velocity;
	velocity -= 7.81;
}
if (Player_o.y >= global.floor) {
	global.jump = 0;
	velocity = 90.62
	if (Player_o.y > global.floor)
		Player_o.y = global.floor
}