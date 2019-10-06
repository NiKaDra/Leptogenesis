/// @description Insert description here
// You can write your code in this editor

//Load the high score, for comparison later
highScore = scrLoad();

randomise();
room_speed = 60;
vol = 1; //Game Volume

timeRate = 1; //How fast is the game playing? (slow down effect)
gameOver = false; //Is the game over?

timeJuice = 100; //Slow-down juice.
timePassed = 0; //Count the ticks
timeLimit = 14400; //How long the game lasts.

drawScore = false; //Draw the final score?

//Alpha for the slow-down bar (used in tutorial)
if (room == room0) {
	barAlpha = 1;
} else {
	barAlpha = 0;	
}

//Particle system for slow-down bar
global.partSystem = part_system_create();
part_system_depth(global.partSystem,-200);

timePart = part_type_create();
part_type_shape(timePart,pt_shape_square);
part_type_scale(timePart,1,1);
part_type_size(timePart,.05,.2,0,0);
part_type_direction(timePart,0,45,-3,0);
part_type_life(timePart,1,30); 
part_type_alpha2(timePart,1,0);
part_type_speed(timePart,1,4,.01,0);
part_type_color_rgb(timePart,255,255,255,255,255,255);
