/// @description Insert description here
// You can write your code in this editor

is_dash = true;

dash_bar = 100;
dash_rate = 1;

game_manager = obj_game_manager;

pl_movement = game_manager.player_move;
dash_movement = 1.25;

// player states for GAME_STATE.SERVICE
enum PLAYER_STATE {
	MINIGAME,
	PAUSE,
	ANIMATION,
	PLAY
}

self_cur_state = PLAYER_STATE.PLAY;