/// @description Insert description here
// You can write your code in this editor

highScore = scrLoad();

//Create a file with High Score 0, if one doesn't exist
if !(file_exists("HighScore.sav")) {
	scrSave(0);	
}

draw_set_font(fntStandard);

room_speed = 60;
alarm[0] = 30;
imgInd = 0;
rot = 0;