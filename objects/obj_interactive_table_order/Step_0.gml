/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();


if (cur_customer_spawn <= new_customer_spawn) {
	cur_customer_spawn += new_customer_spawn_rate;
} else {
	if(instance_exists(front_customer)) {
		// reset line
		cur_customer_spawn = 0; 
		if(keyboard_check_released(obj_game_manager.button_confirm) 
			&& player_obj.closest_interactive == self 
			&& player_near 
			&& !front_customer.order_taken) {
			front_customer.order_taken = true;
		}
	} else {
		
		// create customer at back of line
		front_customer = instance_create_layer(
								x + front_customer_pos.pos_x, 
								y + front_customer_pos.pos_y, 
								"Player_Layer", 
								customer_list[irandom(array_length(customer_list) - 1)]
						);
		
	}
}
