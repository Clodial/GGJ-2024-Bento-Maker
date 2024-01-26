/// @description Insert description here
// You can write your code in this editor

if( keyboard_check_released(btn_cancel) ) 
{
	
	game_manager.cur_state = GAME_STATE.BUILDING;
	instance_destroy(self);

}



