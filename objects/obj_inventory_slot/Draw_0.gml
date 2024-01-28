/// @description Insert description here
// You can write your code in this editor

draw_self();

if(manager_obj.player_inventory[inventory_slot] == "salad") {
	draw_sprite_ext(LBM_bentoset_salad, 0, x + (sprite_width/2), y, 1, 1, 0, c_white, 1);
}
if(manager_obj.player_inventory[inventory_slot] == "meat") {
	draw_sprite_ext(LBM_bentoset_fish, 0, x + (sprite_width/2), y, 1, 1, 0, c_white, 1);
}
if(manager_obj.player_inventory[inventory_slot] == "rice") {
	draw_sprite_ext(LBM_bentoset_rice, 0, x + (sprite_width/2), y, 1, 1, 0, c_white, 1);
}
if(manager_obj.player_inventory[inventory_slot] == "eggs") {
	draw_sprite_ext(LBM_bentoset_tamago, 0, x + (sprite_width/2), y, 1, 1, 0, c_white, 1);
}







