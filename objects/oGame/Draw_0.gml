/// @description Insert description here
// You can write your code in this editor

//Draw time-bar
draw_sprite_ext(sTimeBar,0,0,318,2,2,0,c_white,barAlpha);

var prevAlpha = draw_get_alpha();

draw_set_alpha(barAlpha);

draw_rectangle_color(64,336,64+(timeJuice/100)*438,376,c_white,c_white,c_white,c_white,false);

draw_set_alpha(prevAlpha);

//Draw Final Score

if (room = room0) {
	if (drawScore = true) {
	
		if (instance_number(oSomething) > highScore) {
			var str1 = "New High Score: " + string(instance_number(oSomething)) + " particles of matter.";
		} else {
			var str1 = "Score: " + string(instance_number(oSomething)) + " particles of matter.";
		}	
	
		var str2 = "Press space to return to main menu.";
	
		draw_text(room_width/2-string_length(str1)*4,room_height/2-60,str1)
		draw_text(room_width/2-string_length(str2)*4,room_height/2+50,str2)
		
	}
}