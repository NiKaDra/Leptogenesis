/// @description Insert description here
// You can write your code in this editor

if (transition == true) {
	
	//Set draw alpha to fade, round for choppy fade effect
	alphaRound = round(alpha*10)/10;
	
	draw_set_alpha(alphaRound);
	
	//Draw Transition Rectangle
	draw_rectangle_color(0,0,window_get_width(),
	window_get_height(),c_black,c_black,c_black,c_black,false);
	alpha += .05;
	
	if (alpha = 1) {
		/*If destination is a room, go there. If the destination is set to noone, it
		means to end the game.*/
		if (destRm != noone) {
			room_goto(destRm)	
		} else {
			game_end();	
		}
	}
	
	//Set it to 1 again after drawing
	draw_set_alpha(1);
	
} else {
	
	//Get transparency down after room transition
	if (alpha > 0) {
		
		alphaRound = round(alpha*10)/10;
	
		draw_set_alpha(alphaRound);
	
		draw_rectangle_color(0,0,window_get_width(),
		window_get_height(),c_black,c_black,c_black,c_black,false);
	
	
		draw_set_alpha(1);
		alpha -= .05;	
		
	}
}