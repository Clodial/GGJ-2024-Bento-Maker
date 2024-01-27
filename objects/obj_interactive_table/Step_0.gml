/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_player) && player_obj == undefined) {
	player_obj = obj_player;
}

if(point_distance(player_obj.x, player_obj.y, x, y) <= 115) {
	player_near = true;
} else {
	player_near = false;
}


