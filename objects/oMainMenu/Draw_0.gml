/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sMenuFlare,imgInd,255,75,4,4,rot,c_white,1);
draw_sprite_ext(sTitle,0,64,64,4,4,0,c_white,1);
var str = "High Score: " + string(highScore);
draw_text((room_width/2)-string_length(str)*4,120,str);