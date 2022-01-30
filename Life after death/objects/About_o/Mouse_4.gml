/// @description Insert description here
// You can write your code in this editor

audio_play_sound(Mouse_click_m, 1, false);
if (About_oo.visible == true) {
	About_oo.visible = false;
	Repository_o.visible = false;
	Guillaume_o.visible = false;
	Hugo_o.visible = false;
	Nathan_o.visible = false;
} else {
	About_oo.visible = true;
	Repository_o.visible = true;
	Guillaume_o.visible = true;
	Hugo_o.visible = true;
	Nathan_o.visible = true;
	audio_play_sound(about_m, 1, false);
}

