/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

if (is_cooking && (cur_cooking_meter < food_cook_min || cur_cooking_meter > food_cook_max) ) {
	draw_healthbar( x - (sprite_width/2), y - (sprite_height/2), 
		x - (sprite_width/2) + 10, 
		y - (sprite_height), 
		(cur_cooking_meter/cooking_meter) * 100, c_black, c_yellow, c_red, 2, true, true);
} else if(is_cooking) {
	draw_healthbar( x - (sprite_width/2), y - (sprite_height/2), 
			x - (sprite_width/2) + 10, 
			y - (sprite_height), 
			(cur_cooking_meter/cooking_meter) * 100, c_black, c_green, c_green, 2, true, true);
}