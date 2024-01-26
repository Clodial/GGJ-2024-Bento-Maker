/// @description Insert description here
// You can write your code in this editor

draw_set_font(font_fatfrank);
if(cur_state == GAME_STATE.PAUSE) {

	draw_text_ext_transformed(room_width/2, room_height/2,"PAUSE", 12, 300, 1, 1, 0);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

} else if(cur_state == GAME_STATE.BUILDING) {
	
	draw_text_ext_transformed(room_width/2, (room_height/2) + 200, "VIEW ONLY", 12, 300, 1, 1, 0);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
}

