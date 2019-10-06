/// @description Insert description here
// You can write your code in this editor

if (step < array_length_1d(strArr)) {
	
	if (wait = false) {
		
		if (drawAlpha < 1) {
			drawAlpha += .05;	
		}
		
	} else {
		
		if (drawAlpha > 0) {
			drawAlpha -= .05;
		}
		
	}
	
	alphaRound = round(drawAlpha*10)/10;
	
	draw_set_alpha(alphaRound);
			
	if (step >= 0) {
		draw_text(room_width/2-string_length(strArr[step])*4,room_height/2,strArr[step]);
	} else {
		draw_sprite_ext(sSettings,0,room_width/2,room_height/2,2,2,0,c_white,drawAlpha);	
	}
			
	draw_set_alpha(1);
	
}