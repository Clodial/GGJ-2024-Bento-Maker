/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();

if(obj_game_manager.cur_state == GAME_STATE.SERVICE) {
	if (cur_customer_spawn <= new_customer_spawn) {
		cur_customer_spawn += new_customer_spawn_rate;
	} else if(!instance_exists(front_customer)) {
		cur_customer_spawn = 0;
		// create customer at back of line
		front_customer = instance_create_layer(
							x + front_customer_pos.pos_x, 
							y + front_customer_pos.pos_y, 
							"Player_Layer", 
							customer_list[irandom(array_length(customer_list) - 1)]
						);
		
	}
	if(instance_exists(front_customer)) {
			// reset line
			if(keyboard_check_released(obj_game_manager.button_confirm) 
				&& player_near 
				&& front_customer.order_taken) {
					try {
						show_debug_message(front_customer.order[array_get_index(front_customer.order,obj_game_manager.player_inventory[0])]);
					}
				//if(obj_game_manager.player_inventory[0] != "" 
				//	&& array_get_index(front_customer.order,obj_game_manager.player_inventory[0] > -1)) {
				//	front_customer.order[array_get_index(front_customer.order,obj_game_manager.player_inventory[0])] = "";
				//	obj_game_manager.player_inventory[0] = "";
				//} 
				//if(obj_game_manager.player_inventory[1] != "" 
				//	&& array_get_index(front_customer.order,obj_game_manager.player_inventory[1] > -1)) {
				//	front_customer.order[array_get_index(front_customer.order,obj_game_manager.player_inventory[1])] = "";
				//	obj_game_manager.player_inventory[1] = "";
				//} 
				//if(obj_game_manager.player_inventory[2] != "" 
				//	&& array_get_index(front_customer.order,obj_game_manager.player_inventory[2] > -1)) {
				//	front_customer.order[array_get_index(front_customer.order,obj_game_manager.player_inventory[2])] = "";
				//	obj_game_manager.player_inventory[2] = "";
				//} 
				//if(front_customer.order_taken && array_equals(front_customer.order,["","","",""])) {
				//	front_customer.order_complete = true;
				//}
			}
	}
}
