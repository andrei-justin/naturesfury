// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function goToDisaster(disaster_type){
	room_goto(rm_loading_screen_selected_disaster)
	if (disaster_type == 1) {
		room_goto(rm_earthquake_l1)
	}
	
	if (disaster_type == 2) {
		room_goto(rm_fire_l1)
	}
	
	if (disaster_type == 3) {
		room_goto(rm_typhoon_l1)
	}
}