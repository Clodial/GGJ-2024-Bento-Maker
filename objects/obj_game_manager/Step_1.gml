/// @description Insert description here
// You can write your code in this editor

// switching modes based on input
if(cur_state == GAME_STATE.PAUSE) {
	if(keyboard_check_released(pause) || keyboard_check_released(cancel)) {
		cur_state = GAME_STATE.SERVICE;
	}
} else if(cur_state == GAME_STATE.BUILDING) {
	if(keyboard_check_released(cancel)) {
		cur_state = GAME_STATE.MANAGEMENT;
	}
}

