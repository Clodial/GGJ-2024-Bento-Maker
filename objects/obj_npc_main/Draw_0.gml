/// @description Insert description here
// You can write your code in this editor

draw_self();
if (npc_cur_state == NPC_STATES.MIDDLE_OF_LINE 
	|| npc_cur_state == NPC_STATES.FRONT_OF_LINE) {
	draw_healthbar(
		x+40, y-50, x + 50, y - 150, (wait_time/max_wait_time) * 100, c_black, c_red, c_green, 2, true, true
	);
}




