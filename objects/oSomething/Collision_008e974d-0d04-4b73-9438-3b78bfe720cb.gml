/// @description Insert description here
// You can write your code in this editor
if (other.type != type) {
	
	audio_play_sound(sndAlt,1,0);
	
	instance_create_layer(x,y,"Instances",oExplode);
	with (other) {
		instance_destroy();
	}
	instance_destroy();
}