// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function removeSettingsBtn(){
	
	var room_name = room_get_name(room)
	if string_pos("rm_ls_", room_name) > 0 {
	    //object_set_visible(obj_setting_btn, false)
		obj_setting_btn.image_alpha = 0
	} else {
	    //object_set_visible(obj_setting_btn, true)
		obj_setting_btn.image_alpha = 1
	}
}