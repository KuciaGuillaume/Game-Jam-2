// GAMEJAM EPITECH
// Nathan Catalan
// Guillaume KUcia
// Hugo Eschlimann
// Life After Death

// Saut du personnage 
if (global.attack != 1) {
	if (global.jump == 0  && global.hell != 1) {
		global.jump = 1;
	if (global.skin == 25)
		sprite_index = Player_jump_s;
	if (global.skin == 50)
		sprite_index = Player_jump_s50;
	if (global.skin == 75)
		sprite_index = Player_jump_s75;
	if (global.skin == 100)
		sprite_index = Player_jump_s100;
	} else if (global.jump == 1 && global.hell != 1) {
		global.jump = 2;
	if (global.skin == 25)
		sprite_index = Player_jump_s;
	if (global.skin == 50)
		sprite_index = Player_jump_s50;
	if (global.skin == 75)
		sprite_index = Player_jump_s75;
	if (global.skin == 100)
		sprite_index = Player_jump_s100;
		velocity += (60 - velocity);
	}
}
	