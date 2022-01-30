/// @description Insert description here
// You can write your code in this editor

if (global.stamina <= 0)
	global.reset = 1;
if (global.stamina < 100) {
	global.stamina += 0.05;
	if (global.reset == 1 && global.stamina > 15)
		global.reset = 0;
}