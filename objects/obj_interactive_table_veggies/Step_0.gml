/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(obj_game_manager.cur_state == GAME_STATE.SERVICE) {
	if(player_near) {
		if(keyboard_check_released(obj_game_manager.button_confirm)) {
			var minigame_frame = instance_create_layer(room_width/2, room_height/2, "Popup_Window_Layer", obj_popup_frame);
			obj_game_manager.cur_state = GAME_STATE.MINIGAME;
			audio_play_sound(IA_begin_station, 1, false, 0.5);
		}
	}
}