// GAMEJAM EPITECH
// Nathan Catalan
// Guillaume KUcia
// Hugo Eschlimann
// Life After Death

// Saut du personnage 
if (global.attack != 1) {
	if (global.jump == 0  && global.hell != 1) {
		global.jump = 1;
		sprite_index = Player_jump_s;
	} else if (global.jump == 1 && global.hell != 1) {
		global.jump = 2;
		sprite_index = Player_jump_s;
		velocity += (60 - velocity);
	}
}
	