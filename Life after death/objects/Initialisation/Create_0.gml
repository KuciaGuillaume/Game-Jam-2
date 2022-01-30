// GAMEJAM EPITECH
// Nathan Catalan
// Guillaume KUcia
// Hugo Eschlimann
// Life After Death

// Initialisation des global variables

randomize();
// sol
global.floor = 800;
// jump
global.jump = 0;
// Timer
global.timer = random_range(30, 60);
// HELL
global.hell = 0;
// run 
global.run = 0;
// attack
global.attack = 0;
// press
global.press = 0;
// Life
global.hp_max = 100;
global.life = global.hp_max;
// range attack
global.range_attack = 0;
global.dammage = 25;
// Enemies
global.enemy_max = random_range(2, 4);
global.enemy = 0;
// chest
global.chest = 0;
global.e = 0;
// potion
global.potion = 0;
//
global.skin = 25;
// gestion enfer
global.wolfs = 0;
global.skeleton = 0;
//
global.wolfhp = 50;
global.skeletonhp = 100;
global.wolfdammage = 0.2;
global.skeletondammage = 10;