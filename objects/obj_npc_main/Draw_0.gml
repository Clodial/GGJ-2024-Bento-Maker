/// @description Insert description here
// You can write your code in this editor

draw_self();
if (npc_cur_state == NPC_STATES.MIDDLE_OF_LINE 
	|| npc_cur_state == NPC_STATES.FRONT_OF_LINE) {
	draw_healthbar(
		x+40, y-50, x + 50, y - 150, (wait_time/max_wait_time) * 100, c_black, c_red, c_green, 2, true, true
	);
}

if (order_taken) {
	draw_sprite_ext(spr_order_box_test, 0, x - 20, y - sprite_height + 20, 1, 1, 0, c_white, 1);
	if(order[0] != "") {
		draw_sprite_ext(spr_food_items_for_order, 
			array_get_index(obj_game_manager.game_inventory, order[0]),x - 100, y - sprite_height + 23, 0.8, 0.8, 0, c_white, 1 );
	}
	if(order[1] != "") {
		draw_sprite_ext(spr_food_items_for_order, 
			array_get_index(obj_game_manager.game_inventory, order[1]),x - 50, y - sprite_height + 23, 0.8, 0.8, 0, c_white, 1 );
	}
	if(order[2] != "") {
		draw_sprite_ext(spr_food_items_for_order, 
			array_get_index(obj_game_manager.game_inventory, order[2]),x, y - sprite_height + 23, 0.8, 0.8, 0, c_white, 1 );
	}
	if(order[3] != "") {
		draw_sprite_ext(spr_food_items_for_order, 
			array_get_index(obj_game_manager.game_inventory, order[3]),x + 50, y - sprite_height + 23, 0.8, 0.8, 0, c_white, 1 );
	}
}



