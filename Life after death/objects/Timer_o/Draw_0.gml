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
if (int64(global.timer) >= 10)
	draw_text(x, y, int64(global.timer));
else {
	draw_text(x, y, "0");
	draw_text(x + 30, y, int64(global.timer));
}

seconds = delta_time / 1000000;
if (global.timer > 0)
	global.timer -= seconds;
if (global.hell == 2 && int64(global.timer) < 100 && i == 0) {
	Timer_o.x += 15;
	i = 1
}



