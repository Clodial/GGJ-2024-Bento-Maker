/// @description Insert description here
// You can write your code in this editor

//if(instance_exists(obj_player) && player_obj == undefined) {
//	player_obj = obj_player;
//}

if(instance_exists(obj_player)) {
	if(obj_player.closest_interactive == id) {
		if(point_distance(x, y, obj_player.x, obj_player.y) <= 140){
			player_near = true;
		} else {
			player_near = false;
		}
	}
	if(obj_player.closest_interactive != id){
		player_near = false;
	}	
}
