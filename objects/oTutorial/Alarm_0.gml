/// @description Insert description here
// You can write your code in this editor
step += 1;
wait = false;

if (step <= 8) {
	if (step >= 4) {
		
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
				
	}	
}

