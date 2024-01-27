/// @description movement controls
// You can write your code in this editor
depth = layer_get_depth("Player_Layer") - (y);

if(!game_manager && obj_game_manager) {
	game_manager = obj_game_manager;
}

// gameplay controls
if(game_manager.cur_state == GAME_STATE.SERVICE && self_cur_state == PLAYER_STATE.PLAY) {

	if(keyboard_check_released(game_manager.pause)) {
		game_manager.cur_state = GAME_STATE.PAUSE;
	}

	if(keyboard_check_direct(game_manager.dash) && dash_bar > 0 && is_dash) {
		pl_movement = game_manager.player_move * dash_movement;
		dash_bar -= dash_rate;
		if(dash_bar <= 0) {
			is_dash = false;
		}
	} else {
		pl_movement = game_manager.player_move;
		if(dash_bar < 100) {
			dash_bar += dash_rate;
		}
		if(dash_bar >= 100 && !is_dash) {
			is_dash = true;
			dash_bar = 100;
		}
	}
	
	//up move
	if(keyboard_check(game_manager.up)){
		if(keyboard_check(game_manager.left) || keyboard_check(game_manager.right)) {
			if(!place_meeting(x, y - sqrt(pl_movement/2), obj_wall_object_main)){
				y -= sqrt(pl_movement/2);
			}
		} else if(!keyboard_check(game_manager.down)) {
			if(!place_meeting(x, y - (pl_movement/2), obj_wall_object_main)){
				y -= pl_movement/2;
			}
		}
	}

	//down move
	if(keyboard_check(game_manager.down)) {
		if(keyboard_check(game_manager.left) || keyboard_check(game_manager.right)) {
			if(!place_meeting(x, y + sqrt(pl_movement/2), obj_wall_object_main)){
				y += sqrt(pl_movement/2);
			}
		} else if(!keyboard_check(game_manager.up)) {
			if(!place_meeting(x, y + (pl_movement/2), obj_wall_object_main)){
				y += pl_movement/2;
			}
		}
	}

	//left move
	if(keyboard_check(game_manager.left)) {
		if(keyboard_check(game_manager.up) || keyboard_check(game_manager.down)) {
			if(!place_meeting(x - sqrt(pl_movement), y, obj_wall_object_main)){
				x -= sqrt(pl_movement);
			}
		} else if(!keyboard_check(game_manager.right)) {
			if(!place_meeting(x - pl_movement,y, obj_wall_object_main)){
				x -= pl_movement;
			}
		}
	}

	//right move
	if(keyboard_check(game_manager.right)) {
		if(keyboard_check(game_manager.up) || keyboard_check(game_manager.down)) {
			if(!place_meeting(x + sqrt(pl_movement),y, obj_wall_object_main)){
				x += sqrt(pl_movement);
			}
		} else if(!keyboard_check(game_manager.left)) {
			if(!place_meeting(x + pl_movement,y, obj_wall_object_main)){
				x += pl_movement;
			}
		}
	}
}


