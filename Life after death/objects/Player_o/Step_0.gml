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
if (Player_o.y < global.floor) {
	if (global.hell == 1) {
		Player_o.y += 9.81;
	} else
		Player_o.y += 30.81;
}

if (global.hell == 1 && cam_pos <= 1080) {
	camera_set_view_pos(view_camera[0], 0, cam_pos);
	cam_pos += 9.81;
} else if (cam_pos >= 1080) {
	global.hell = 2;
}
	
// jump et double jump
if (global.jump == 1 || global.jump == 2) {
	Player_o.y -= velocity;
	velocity -= 1.81;
}
if (Player_o.y >= global.floor) {
	global.jump = 0;
	velocity = 60.62
	if (Player_o.y > global.floor) {
		Player_o.y = global.floor;
		sprite_index = Player_walk_s;
	}
}

if (keyboard_check(vk_shift) && global.hell != 1) {
	if (global.attack != 1) {
		global.run = 1;
		sprite_index = Player_run_s;
	}
} else {
	if (global.attack != 1) {
		global.run = 0;
		sprite_index = Player_walk_s;
	}
}

if (sprite_index == Player_attack_s && image_index >= 9) {
	if (global.run == 1)
		sprite_index = Player_run_s;
	else
		sprite_index = Player_walk_s;
	global.attack = 0;
}

if (global.hell == 0) {
	Life_o.image_index = 0;
}

// Déscente au enfer
if (int64(global.timer) == 0) {
	global.floor += 1080;
	global.timer = 105;
	Timer_o.y += 1070;
	Timer_o.x -= 15;
	global.hell = 1;
	global.jump = 0;
}