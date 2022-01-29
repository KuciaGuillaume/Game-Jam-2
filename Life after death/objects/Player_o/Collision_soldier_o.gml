/// @description Insert description here
// You can write your code in this editor

with (other) {

	if (global.attack == 1 && Player_o.image_index >= 4 && alive == 1 && global.range_attack == 0) {
		hp -= global.dammage;
		global.range_attack = 1;
		if (hp <= 0) {
			alive = 0;
			instance_destroy();
			global.enemy -= 1;
			global.dammage += 0.5;
		}
	}
}
