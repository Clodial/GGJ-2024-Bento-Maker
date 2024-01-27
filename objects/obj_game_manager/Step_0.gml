/// @description Insert description here
// You can write your code in this editor

// audio controllers
if(cur_state == GAME_STATE.MANAGEMENT && !audio_is_playing(snd_song_FocusManagement)){
	audio_stop_all()
	cur_song_updated = false;
	cur_song = audio_play_sound(snd_song_FocusManagement,  50, true, 1, cur_song_time);
} else if(cur_state == GAME_STATE.SERVICE && !audio_is_playing(snd_song_focusUpServeFinal)) {
	audio_stop_all()
	cur_song_updated = false;
	cur_song = audio_play_sound(snd_song_focusUpServeFinal,  50, true, 1, cur_song_time);
} else if(cur_state == GAME_STATE.PAUSE || cur_state == GAME_STATE.BUILDING) {
	if(!cur_song_updated) {
		cur_song_time = audio_sound_get_track_position(cur_song);
		cur_song_updated = true;
	}
	audio_stop_all();
}

//instance creation code based on game state)
if(cur_state == GAME_STATE.MANAGEMENT && !instance_exists(obj_day_end_manager)) {
	instance_create_layer(room_width/2, room_height/2, "Popup_Window_Layer", obj_day_end_manager);
}

if(keyboard_check_released(exit_button)) {
	game_end();
}