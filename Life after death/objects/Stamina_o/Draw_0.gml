/// @description Insert description here
// You can write your code in this editor

if (global.hell == 0)
	n = 1075;
else
	n = 2155;

if (global.stamina != 100 && global.reset == 0)
	draw_healthbar(0, n, 1920, n + 5, global.stamina, c_white, c_orange, c_lime, 0, true, false);
if (global.stamina != 100 && global.reset == 1)
	draw_healthbar(0, n, 1920, n + 5, global.stamina, c_white, c_red, c_lime, 0, true, false);
