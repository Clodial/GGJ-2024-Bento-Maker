/// @description movement controls
// You can write your code in this editor

if(!game_manager && obj_game_manager) {
	game_manager = obj_game_manager;
}

if(keyboard_check(game_manager.dash) && dash_bar > 0 && isDash) {
	pl_movement = game_manager.player_move * dash_movement;
	dash_bar -= dash_rate;
	if(dash_bar <= 0) {
		isDash = false;
	}
} else {
	pl_movement = game_manager.player_move;
	if(dash_bar < 100) {
		dash_bar += dash_rate;
	}
	if(dash_bar >= 100 && !isDash) {
		isDash = true;
		dash_bar = 100;
	}
}

//up move
if(keyboard_check(game_manager.up)){
	if(keyboard_check(game_manager.left) || keyboard_check(game_manager.right)) {
		if(!place_meeting(x, y - sqrt(pl_movement), obj_wall_object_main)){
			y -= sqrt(pl_movement);
		}
	} else if(!keyboard_check(game_manager.down)) {
		if(!place_meeting(x, y - sqrt(pl_movement), obj_wall_object_main)){
			y -= pl_movement;
		}
	}
}

//down move
if(keyboard_check(game_manager.down)) {
	if(keyboard_check(game_manager.left) || keyboard_check(game_manager.right)) {
		if(!place_meeting(x, y + sqrt(pl_movement), obj_wall_object_main)){
			y += sqrt(pl_movement);
		}
	} else if(!keyboard_check(game_manager.up)) {
		if(!place_meeting(x, y + pl_movement, obj_wall_object_main)){
			y += pl_movement;
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
		if(!place_meeting(x - game_manager.player_move,y, obj_wall_object_main)){
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


