/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(obj_game_manager.cur_state == GAME_STATE.SERVICE) {
	if(player_near) {
		if(keyboard_check_released(obj_game_manager.button_confirm) && !is_cooking) {
			is_cooking = true;
			cur_cooking_meter = 0;
			audio_play_sound(IA_begin_station, 1, false, 0.5);
		} else if (keyboard_check_released(obj_game_manager.button_confirm) && is_cooking) {
			if(cur_cooking_meter >= food_cook_min && cur_cooking_meter <= food_cook_max){
				if(obj_game_manager.player_inventory[0] == "") {
					obj_game_manager.player_inventory[0] = "eggs";
				} else if(obj_game_manager.player_inventory[1] == "") {
					obj_game_manager.player_inventory[1] = "eggs";
				} else if(obj_game_manager.player_inventory[2] == "") {
					obj_game_manager.player_inventory[2] = "eggs";
				}
				audio_play_sound(IA_success_state, 1, false, 0.5);
			} else {
				audio_play_sound(IA_fail_state, 1, false, 0.5);
			}
			is_cooking = false;
		}
	}
	if (is_cooking) {
		if (cur_cooking_meter < cooking_meter) {
			cur_cooking_meter += cooking_rate;
		}
	}
}