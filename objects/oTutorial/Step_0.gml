/// @description Insert description here
// You can write your code in this editor

//Tutorial
if (step < array_length_1d(strArr)) { //!!! Step < 10
	
	if (wait == false) {
		
		///Step specifics
		
		//Step -1
		if (step = -1) {
			if (keyboard_check_pressed(vk_space)) {
				scrTransition(room0);	
			}
		}
		
		//Step 9
		if (step == 9) {
			
			if !(instance_exists(oSomething)) {
			
				audio_play_sound(sndPop,1,0);
				rX = room_width/2 + random_range(-40,40);
				rY = room_height/2 + random_range(-40,-20);
				a = instance_create_layer(rX,rY,"Instances",oSomething);
				a.type = "m";
				b = instance_create_layer(rX-20,rY,"Instances",oSomething);
				b.type = "am"
	
				a.target = b;
				b.target = a;
			}
			
			for (var i = 0; i < instance_number(oSomething); i++) {
				
				var nextStep = true;
				
				if (instance_find(oSomething,i).type = "am") {
					nextStep = false;	
				}
				
			}
			
			if (nextStep == true) {
				if (wait == false) {
					alarm[0] = 60;
					wait = true;
				}
			}
		}
		
		//Step 14
		
		if (step == 14) {
			if (irandom_range(0,10) == 0) {
				
				audio_play_sound(sndPop,1,0);
				rX = room_width/2 + random_range(-40,40);
				rY = room_height/2 + random_range(-40,-20);
				a = instance_create_layer(rX,rY,"Instances",oSomething);
				a.type = "m";
				b = instance_create_layer(rX-20,rY,"Instances",oSomething);
				b.type = "am"
	
				a.target = b;
				b.target = a;
				
			}
		}
		
		//Step 15
		
		if (step == 15) {
			oGame.gameOver = true;	
		}
		
		//Step 16
		if (step == 16) {
			oGame.gameOver = false;	
		}
		
		//Step 16+
		if (step > 16) {
			
			if (barAlpha < 1) {
				barAlpha += .05;
				var alphaRound = round(drawAlpha*10)/10;
				oGame.barAlpha = alphaRound;
			}
			
			if (irandom_range(0,10) == 0) {
				
				audio_play_sound(sndPop,1,0);
				rX = room_width/2 + random_range(-40,40);
				rY = room_height/2 + random_range(-80,-20);
				a = instance_create_layer(rX,rY,"Instances",oSomething);
				a.type = "m";
				b = instance_create_layer(rX-20,rY,"Instances",oSomething);
				b.type = "am"
	
				a.target = b;
				b.target = a;
				
			}
			
		}
		
		//Step 21
		if (step == 21) {
			if (keyboard_check_pressed(vk_space)) {
				scrTransition(room0);	
			}
		}
		
		//Move forward on mouse click
		
		if (step != 9) {
			if (step != 21) {
				if (mouse_check_button_pressed(mb_left)) {
					alarm[0] = 60; 	
					wait = true;
				}
			}
		}
	}

}