/// @description Insert description here
// You can write your code in this editor

if (type == "m") {
	sprite_index = sMatter; 
	hSpd = 30/oGame.timeRate;
} else {
	sprite_index = sAntimatter;	
	hSpd = -30/oGame.timeRate;
	alarm[2] = 180;
}

alarm[1] = 15;