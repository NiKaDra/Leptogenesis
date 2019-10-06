/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(target) < 75) {
	if (attract == true) {
		draw_line_width(x,y,target.x,target.y,10-(distance_to_object(target)/7.5));	
	}
}

draw_self();