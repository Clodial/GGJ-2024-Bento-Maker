/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_9_slice, 0, room_width/2, room_height/2, window_wscale, window_hscale, 0, c_white, 1);

if (cur_state == FRAME_STATE.SALAD) {
	if(player_place < 1){
		draw_sprite_ext(spr_arrow_main_salad, 
		array_get_index(possible_inputs, (player_inputs[0])), 
		(room_width/2) - 124, room_height/2, 1, 1, 0, c_white, 1);
	}
	if(player_place < 2){
		draw_sprite_ext(spr_arrow_main_salad, 
		array_get_index(possible_inputs, (player_inputs[1])), 
		(room_width/2) - 40, room_height/2, 1, 1, 0, c_white, 1);
	}
	if(player_place < 3){
		draw_sprite_ext(spr_arrow_main_salad, 
		array_get_index(possible_inputs, (player_inputs[2])), 
		(room_width/2) + 40, room_height/2, 1, 1, 0, c_white, 1);
	}
	if(player_place < 4){
		draw_sprite_ext(spr_arrow_main_salad, 
		array_get_index(possible_inputs, (player_inputs[3])), 
		(room_width/2) + 124, room_height/2, 1, 1, 0, c_white, 1);
	}
}



