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
} else if (cam_pos >= 1080 && global.hell != 3) {
	global.hell = 2;
	if (h == 0) {
		global.enemy_max += 20;
		h = 1;
	}
}

if (global.hell == 3 && cam_pos >= 0) {
	camera_set_view_pos(view_camera[0], 0, cam_pos);
	cam_pos -= 9.81;
	global.floor -= 9.81;
} else if (cam_pos <= 0 && global.hell == 3) {
	global.hell = 0;
	global.enemy_max -= 20;
	global.floor = 800;
	cam_pos = 0;
	h = 0;
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
		if (global.skin == 25)
			sprite_index = Player_walk_s;
		if (global.skin == 50)
			sprite_index = Player_walk_s50;
		if (global.skin == 75)
			sprite_index = Player_walk_s75;
		if (global.skin == 100)
			sprite_index = Player_walk_s100;
	}
}

if (keyboard_check(vk_shift) && global.hell != 1) {
	if (global.attack != 1) {
		global.run = 1;
		if (global.skin == 25)
			sprite_index = Player_run_s;
		if (global.skin == 50)
			sprite_index = Player_run_s50;
		if (global.skin == 75)
			sprite_index = Player_run_s75;
		if (global.skin == 100)
			sprite_index = Player_run_s100;
	}
} else {
	if (global.attack != 1) {
		global.run = 0;
		if (global.skin == 25)
			sprite_index = Player_walk_s;
		if (global.skin == 50)
			sprite_index = Player_walk_s50;
		if (global.skin == 75)
			sprite_index = Player_walk_s75;
		if (global.skin == 100)
			sprite_index = Player_walk_s100;
	}
}

if ((sprite_index == Player_attack_s || sprite_index == Player_attack_s50 || sprite_index == Player_attack_s75 || sprite_index == Player_attack_s100) && image_index >= 9 || (image_index >= 7 && global.skin == 50) || ((image_index >= 6 && (global.skin == 75 || global.skin == 100)))) {
	if (global.run == 1) {
		if (global.skin == 25)
			sprite_index = Player_run_s;
		if (global.skin == 50)
			sprite_index = Player_run_s50;
		if (global.skin == 75)
			sprite_index = Player_run_s75;
		if (global.skin == 100)
			sprite_index = Player_run_s100;
	} else {
		if (global.skin == 25)
			sprite_index = Player_walk_s;
		if (global.skin == 50)
			sprite_index = Player_walk_s50;
		if (global.skin == 75)
			sprite_index = Player_walk_s75;
		if (global.skin == 100)
			sprite_index = Player_walk_s100;
	}
	global.attack = 0;
	global.range_attack = 0;
}

if (global.hell == 0) {
	Life_o.image_index = 0;
}

// Déscente au enfer
if (int64(global.timer) == 0 && global.hell != 2) {
	global.floor += 1080;
	global.timer = random_range(15, 30);
	Timer_o.y += 1070;
	Timer_o.x -= 15;
	global.hell = 1;
	global.jump = 0;
} else if (int64(global.timer) <= 0 && global.hell == 2) {
	global.timer = random_range(30, 60);
	global.hell = 3;
	Timer_o.y -= 1070;
}

if (global.dammage >= 25 && global.dammage < 50) {
	global.skin = 25;
}
if (global.dammage >= 50 && global.dammage < 75) {
	global.skin = 50;
	if (i == 25) {
		global.enemy_max += random_range(0, 7);
		global.hp_max += 30;
		global.life = global.hp_max;
		i = 50;
	}
}
if (global.dammage >= 75 && global.dammage < 100) {
	global.skin = 75;
	if (i == 50) {
		global.enemy_max += random_range(0, 9);
		global.hp_max += 60;
		global.life = global.hp_max;
		global.wolfhp += 25;
		global.skeletonhp += 25;
		global.wolfdammage += 0.3;
		global.skeletondammage += 5;
		i = 75;
	}
}
if (global.dammage >= 100) {
	global.skin = 100;
	if (i == 100) {
		global.enemy_max += random_range(0, 15);
		global.hp_max += 120;
		global.life = global.hp_max;
		global.wolfhp += 100;
		global.skeletonhp += 100;
		global.wolfdammage += 0.3;
		global.skeletondammage += 10;
		i = 125;
	}
}

if (i == 150) {
	global.enemy_max += random_range(0, 20);
	global.life = global.hp_max;
	i = 175;
}
if (i == 200) {
	global.enemy_max += random_range(0, 40);
	global.life = global.hp_max;
	i = 225;
}
if (i == 250) {
	global.enemy_max += random_range(0, 60);
	global.life = global.hp_max;
	i = 275;
}


