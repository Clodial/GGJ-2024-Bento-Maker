/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

station = KITCHEN_STRUCTURE.LINE;
new_customer_spawn = 600;
cur_customer_spawn = 0;
new_customer_spawn_rate = 1; // fps is 60

front_customer = undefined;
//middle_customer = undefined;
//end_of_line = undefined;

front_customer_pos = {
	pos_x: 60,
	pos_y: 60
};
//middle_customer_pos = {
//	pos_x: 150,
//	pos_y: 150
//};
//end_of_line_pos = {
//	pos_x: 300,
//	pos_y: 300
//};

customer_list = [obj_npc_kid, obj_npc_middle, obj_npc_old]