// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function addSettingsButton(){
	while (rollback_game_running) {
		if (room == rm_loading_screen_select_char) {
			object_set_visible(obj_setting_btn, false)
		}
	}
}