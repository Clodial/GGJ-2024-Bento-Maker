/// @description Insert description here
// You can write your code in this editor

if(main_obj.cur_state == GAME_STATE.MANAGEMENT) {
	//instance_destroy(self);
}

// salad minigame
if (cur_state == FRAME_STATE.SALAD) {
	window_hscale = 3;
	window_wscale = 5;
	if (player_place < array_length(player_inputs)) {
		if(keyboard_check_released(main_obj.up)) {
			if(player_inputs[player_place] == "up") {
				player_place += 1;
			} else {
				instance_destroy(self)
			}
		} else if(keyboard_check_released(main_obj.left)) {
			if(player_inputs[player_place] == "left") {
				player_place += 1;
			} else {
				instance_destroy(self)
			}
		} else if (keyboard_check_released(main_obj.right)) {
			if(player_inputs[player_place] == "right") {
				player_place += 1;
			} else {
				instance_destroy(self)
			}
		} else if (keyboard_check_released(main_obj.down)) {
			if(player_inputs[player_place] == "down") {
				player_place += 1;
			} else {
				instance_destroy(self)
			}
		}
	} else {
		instance_destroy(self);
	}
}






