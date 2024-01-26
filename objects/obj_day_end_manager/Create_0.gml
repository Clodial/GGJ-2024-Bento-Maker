/// @description Insert description here
// You can write your code in this editor

x = room_width/2
y = room_height/2

game_manager = obj_game_manager;

currency = game_manager.player_currency;
day = game_manager.day;

btn_confirm = game_manager.button_confirm;
clk_confirm = game_manager.click_confirm;
btn_cancel = game_manager.cancel;

start_button = instance_create_layer(x + 120, y + 180, "Popup_Items_Window_Layer", obj_start_day_button);
cancel_button = instance_create_layer(x + 200, y - 200, "Popup_Items_Window_Layer", obj_cancel_button);
