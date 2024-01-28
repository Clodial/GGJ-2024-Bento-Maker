/// @description Insert description here
// You can write your code in this editor

if( keyboard_check_released(btn_cancel) 
	|| (mouse_check_button_released(clk_confirm) && position_meeting(mouse_x, mouse_y, cancel_button))
	) 
{
	
	game_manager.cur_state = GAME_STATE.BUILDING;
	instance_destroy(start_button);
	instance_destroy(cancel_button);
	instance_destroy(self);

}

if( keyboard_check_released(btn_confirm) 
	|| (mouse_check_button_released(clk_confirm) && position_meeting(mouse_x, mouse_y, start_button))
	) 
{
	
	game_manager.cur_state = GAME_STATE.SERVICE;
	game_manager.cur_song_time = 0;
	instance_destroy(start_button);
	instance_destroy(cancel_button);
	instance_destroy(self);

}



