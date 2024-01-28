/// @description Insert description here
// You can write your code in this editor

depth = layer_get_depth("Player_Layer") - (y);

if(obj_game_manager.cur_state == GAME_STATE.SERVICE) {
	if(wait_time <= 0) {
		instance_destroy(self);
	}
	
	if(order_complete == true) {
		obj_game_manager.player_currency += currency_return;
		instance_destroy(self);
	}

	if (npc_cur_state == NPC_STATES.MIDDLE_OF_LINE) {
		wait_time -= wait_time_rate/4;
	} else if(npc_cur_state == NPC_STATES.FRONT_OF_LINE) {
		// time rate for current place
		wait_time -= wait_time_rate;
		if (!order_taken) {
			if(order_timer < order_show_time){
				order_timer += order_show_time_rate;
			} else {
				//set the order
				order = obj_game_manager.set_customer_order();
				order_taken = true;
			}
		}
	}
}

