/// @description Insert description here
// You can write your code in this editor

image_speed = oGame.timeRate;

if (instance_exists(target)) {
	
	if (target != noone) {
	
		if (attract = true) {
			
			if (target.type != type) {
	
				hSpd += (target.x-x)/(distance_to_point(target.x,target.y)*1.5);
				vSpd += (target.y-y)/(distance_to_point(target.x,target.y)*1.5);	
			
			} else {
				target = noone;	
			}
		
		}
		
	}
	
} else {
	
	if (instance_exists(oSomething)) {
		
		for (var i = 0; i < instance_number(oSomething); i++) {
			
			targetTest = instance_find(oSomething,i);
			
			if (targetTest.type != type) {
				target = targetTest;	
			}
			
			break;
		}
		
	}
}

//Change transformed Antimatter into Matter (Sprite)
if (sprite_index = sTransform) {
	if (image_index >= 4) sprite_index = sMatter;	
}

//Mouse Repelling
if (distance_to_point(mouse_x,mouse_y) < 30) {
	hSpd -= (mouse_x-x)*.5;
	vSpd -= (mouse_y-y)*.5;
}

//Ending clump
if (oGame.gameOver == true) {
	hSpd += ((room_width/2+random_range(5,-5))-x)*0.5;	
	vSpd += ((room_height/2+random_range(5,-5))-y)*0.5;	
}

//Same type repelling
nearInst = instance_nearest(x,y,oSomething);
hSpd -= (nearInst.x-x);
vSpd -= (nearInst.y-y);	

//Remove speed over time
hSpd *= .85;
vSpd *= .85;

hSpd = clamp(hSpd,-30,30);
vSpd = clamp(vSpd,-30,30);

if (abs(hSpd)) < .5 {
	hSpd = 0;
}

if (abs(vSpd)) < .5 {
	vSpd = 0;
}

//Adjust for possible time slow-down

x += hSpd*oGame.timeRate;
y += vSpd*oGame.timeRate;

//Teleport if out of screen

if (x > room_width) {
	x = 5;
} else if (x < 0) {
	x = room_width-5;
}
//Tutorial
if (room = room0) {
	if (y > room_height-48) {
		y = 5;
	} else if (y < 0) {
		y = room_height-48;
	}
} else {
	if (room = rmTutorial) {
		if (y > room_height) {
			y = 5;
		} else if (y < 0) {
			y = room_height-5;
		}
	}
}
