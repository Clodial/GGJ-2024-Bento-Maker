/// @description Insert description here
// You can write your code in this editor

enum NPC_STATES {
	BACK_OF_LINE,
	MIDDLE_OF_LINE,
	FRONT_OF_LINE
}

npc_cur_state = NPC_STATES.FRONT_OF_LINE;

currency_return = 10;
wait_time = 500;
max_wait_time = wait_time;
wait_time_rate = 1;
order = ["", "", "", ""];
order_show_time = 50;
order_timer = 0;
order_show_time_rate = 10;

order_taken = false;
order_complete = false;

function set_npc_place(_state) {
	npc_cur_state = _state;
}

