/// @description Insert description here
// You can write your code in this editor
rot += .05;
if (rot >= 360) {
	rot = 0;
}

if (keyboard_check_pressed(ord("F"))) {
	window_set_fullscreen(abs(window_get_fullscreen()-1));	
}
