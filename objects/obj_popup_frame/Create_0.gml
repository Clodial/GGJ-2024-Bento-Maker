/// @description Insert description here
// You can write your code in this editor

window_wscale = 5;
window_hscale = 5;

main_obj = obj_game_manager;

enum FRAME_STATE {
	SALAD,
	BENTO
}



cur_state = FRAME_STATE.SALAD;

minigame_complete = false;
minigame_pass = false;

image_yscale = 3;
image_xscale = 3;

possible_inputs = ["down", "left", "right", "up"];

// salad minigame items
player_place = 0;
player_inputs = [possible_inputs[irandom(array_length(possible_inputs) -1)],
				possible_inputs[irandom(array_length(possible_inputs) -1)],
				possible_inputs[irandom(array_length(possible_inputs) -1)],
				possible_inputs[irandom(array_length(possible_inputs) -1)]];