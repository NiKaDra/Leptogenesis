/// @description Insert description here
// You can write your code in this editor

//Settings
if (keyboard_check_pressed(ord("F"))) {
	window_set_fullscreen(abs(window_get_fullscreen()-1));	
}

if (keyboard_check_pressed(ord("M"))) {
	vol = abs(vol-1);
	audio_set_master_gain(0,vol)
}

if (keyboard_check_pressed(vk_escape)) {
	scrTransition(noone);	
}

if (room = room0) {

	//Tick the game forward
	if (timePassed < timeLimit) {
		timePassed += 1;
	} else {
		if (gameOver = false) {		
			gameOver = true;	
			alarm[0] = 30;
		}
	}

	//Time rates for slow down effect

	if (mouse_check_button(mb_left)) {
	
		//Particles for slow down effect
		part_particles_create(global.partSystem,64+(timeJuice/100)*438,376 + random_range(-30,5),timePart,1);

		if (timeJuice > 0) {
			timeRate = 1 - 0.9*(timeJuice/100);
			timeJuice -= .7;
		}
	
	} else {	

		if (timeJuice < 100) {	
			timeJuice += .35;	
		}
		timeRate = 1;
	}

	//Return to menu when game is over
	if (drawScore == true) {
		if (keyboard_check_pressed(vk_space)) {
			scrTransition(rmMainMenu);	
		}
	}


	/* Testing / Debugging

		if (keyboard_check_pressed(vk_up)) {
			rX = random_range(50,room_width-50);
			rY = random_range(50,room_height-50)
			a = instance_create_layer(rX,rY,"Instances",oSomething);
			a.type = "m";
			b = instance_create_layer(rX-20,rY,"Instances",oSomething);
			b.type = "am"
	
			a.target = b;
			b.target = a;
		}
	
		if (keyboard_check(vk_down)) {
			rX = random_range(50,room_width-50);
			rY = random_range(50,room_height-50)
			a = instance_create_layer(rX,rY,"Instances",oSomething);
			a.type = "m";
		}
	
		if (keyboard_check_pressed(vk_right)) room_restart();

		if (keyboard_check_pressed(ord("E"))) gameOver = true;

	*/

	if (irandom_range(0,150-(timePassed/(timeLimit/150))) == 0) {
	
		if (gameOver == false) {

			audio_play_sound(sndPop,1,0);
			rX = random_range(50,room_width-50);
			rY = random_range(50,room_height-50)
			a = instance_create_layer(rX,rY,"Instances",oSomething);
			a.type = "m";
			b = instance_create_layer(rX-20,rY,"Instances",oSomething);
			b.type = "am"
	
			a.target = b;
			b.target = a;
		
		}

	}

}

///Extra for Tutorial

//Time rates for slow down effect
if (room = rmTutorial) {
	
	if (oTutorial.step > 16) {
		if (mouse_check_button(mb_left)) {
	
			//Particles for slow down effect
			part_particles_create(global.partSystem,64+(timeJuice/100)*438,376 + random_range(-30,5),timePart,1);

			if (timeJuice > 0) {
				timeRate = 1 - 0.9*(timeJuice/100);
				timeJuice -= .7;
			}
	
		} else {	

			if (timeJuice < 100) {	
				timeJuice += .35;	
			}
			timeRate = 1;
		}
	}
}


