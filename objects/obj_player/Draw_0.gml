/// @description Insert description here
// You can write your code in this editor

draw_self();

//if(game_manager.cur_state == GAME_STATE.SERVICE) {
//	draw_rectangle(x + 100, y + ((dash_bar + 1)/2), x + 120, y - ((dash_bar + 1)/2), false);
//}

if(closest_interactive) {
	draw_line(x, y, closest_interactive.x, closest_interactive.y);
}

