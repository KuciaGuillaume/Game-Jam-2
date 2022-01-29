// GAMEJAM EPITECH
// Nathan Catalan
// Guillaume KUcia
// Hugo Eschlimann
// Life After Death

// Saut du personnage 

if (global.jump == 0  && global.hell != 1)
	global.jump = 1;
else if (global.jump == 1  && global.hell != 1) {
	global.jump = 2;
	velocity += (100 - velocity);
}
	