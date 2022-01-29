// GAMEJAM EPITECH
// Nathan Catalan
// Guillaume KUcia
// Hugo Eschlimann
// Life After Death

///////////////////////////////////////////////////
/////////////////// Affichage du timer ////////////
///////////////////////////////////////////////////
// seconds = ceil(delta_time / 100000);

draw_set_font(Timer);
draw_text(x, y, int64(global.timer));


seconds = delta_time / 1000000;
if (global.timer > 0)
	global.timer -= seconds;



