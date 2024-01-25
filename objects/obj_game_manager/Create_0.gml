/// @description Global Game Variable Instantiation

// enums
enum GAME_STATE {
	MANAGEMENT,
	BUILDING,
	STORY,
	SERVICE,
	PAUSE,
	CUTSCENE
}

enum GAME_INVENTORY {
	RICE,
	EGGS,
	SALAD,
	MEAT,
	NONE
}

enum KITCHEN_STRUCTURE {
	STOVE,
	RICE_POT,
	SALAD_MAKER,
	BENTO_MAKER,
	LINE
}

// structs
inventory_prices = 
{
	rice : 5,
	eggs : 5,
	salad : 5,
	meat : 5
};

structure_prices = {
	stove : 20,
	rice_pot: 20,
	salad_maker: 20,
	bento_maker: 20
};

//default values
up = ord("W");
down = ord("S");
left = ord("A");
right = ord("D");

dash = vk_shift;
button_confirm = vk_enter;
click_confirm = mb_left;
cancel = vk_backspace;
pause = ord("P");

player_move = 4;
player_currency = 100;
player_upkeep = 0;

max_day_timer = 120; //how long is each bento service
day = 0;

// items picked up by player will be stored here, player can only hold 3 items
player_inventory = [GAME_INVENTORY.NONE, GAME_INVENTORY.NONE, GAME_INVENTORY.NONE];
cur_state = GAME_STATE.MANAGEMENT

// file setting
init_state_file = "main_game.ini";
if(!file_exists(init_state_file)) {
	ini_open(init_state_file);
		//button controls
		ini_write_real("gameplay", "up", up);
		ini_write_real("gameplay", "down", down);
		ini_write_real("gameplay", "left", left);
		ini_write_real("gameplay", "right", right);
		ini_write_real("gameplay", "dash", dash);
		ini_write_real("gameplay", "button_confirm", button_confirm);
		ini_write_real("gameplay", "click_confirm", click_confirm);
		ini_write_real("gameplay", "cancel", cancel);
		ini_write_real("gameplay", "pause", pause);
		//player stats
		ini_write_real("player", "move", player_move);
		ini_write_real("player", "money", player_currency);
		ini_write_real("player", "store_upkeep", player_upkeep);
		// general
		ini_write_real("general", "max_day_timer", max_day_timer); 
		ini_write_real("general", "day", day);
		// game prices
		ini_write_real("prices", "rice", inventory_prices.rice);
		ini_write_real("prices", "eggs", inventory_prices.eggs);
		ini_write_real("prices", "salad", inventory_prices.salad);
		ini_write_real("prices", "meat", inventory_prices.meat);
		ini_write_real("prices", "kitchen_stove", structure_prices.stove);
		ini_write_real("prices", "kitchen_rice_pot", structure_prices.rice_pot);
		ini_write_real("prices", "kitchen_salad_maker", structure_prices.salad_maker);
		ini_write_real("prices", "kitchen_bento_maker", structure_prices.bento_maker);
	ini_close();
} else {
	// set pre-existing values
	ini_open(init_state_file);
		// set controls from file
		up = ini_read_real("gameplay", "up", up);
		down = ini_read_real("gameplay", "down", down);
		left = ini_read_real("gameplay", "left", left);
		right = ini_read_real("gameplay", "right", right);
		dash = ini_read_real("gameplay", "dash", dash);
		button_confirm = ini_read_real("gameplay", "button_confirm", button_confirm);
		click_confirm = ini_read_real("gameplay", "click_confirm", click_confirm);
		cancel = ini_read_real("gameplay", "cancel", cancel);
		pause = ini_read_real("gameplay", "pause", pause);
		// player stats
		player_move = ini_read_real("player", "move", player_move);
		player_currency = ini_read_real("player", "money", player_currency);
		player_upkeep = ini_read_real("player", "store_upkeep", player_upkeep);
		// general
		max_day_timer = ini_read_real("general", "max_day_timer", max_day_timer);
		day = ini_read_real("general", "day", day);
		// game prices
		inventory_prices.rice = ini_read_real("prices", "rice", inventory_prices.rice);
		inventory_prices.eggs = ini_read_real("prices", "rice", inventory_prices.eggs);
		inventory_prices.salad = ini_read_real("prices", "rice", inventory_prices.salad);
		inventory_prices.meat = ini_read_real("prices", "rice", inventory_prices.meat);
		structure_prices.stove = ini_read_real("prices", "kitchen_stove", structure_prices.stove);
		structure_prices.rice_pot = ini_read_real("prices", "kitchen_rice_pot", structure_prices.rice_pot);
		structure_prices.salad_maker = ini_read_real("prices", "kitchen_salad_maker", structure_prices.salad_maker);
		structure_prices.bento_maker = ini_read_real("prices", "kitchen_bento_maker", structure_prices.bento_maker);
	ini_close();
}

