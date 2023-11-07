var camera_x_pos = obj_player.x - (camera_get_view_width(view_camera[0]) / 2)
var camera_y_pos = obj_player.y - (camera_get_view_height(view_camera[0]) / 2)

camera_x_pos = clamp(camera_x_pos, 0, room_width - camera_get_view_width(view_camera[0]))
camera_y_pos = clamp(camera_y_pos, 0, room_height - camera_get_view_height(view_camera[0]))

#region //EARTHQUAKE
if (global.disaster_type == 1) {
	
	if (follow_player && !global.shake) {
	
		camera_set_view_pos(view_camera[0], 
							camera_x_pos,
							camera_y_pos
					
		)
		
	}
	else if (follow_player && global.shake) {
	
		shakeScreen(view_camera[0],
					camera_x_pos,
					camera_y_pos,
					5
		)
	
	}
	
	alarm[1] = 100
	alarm[2] = 100
 
	//if (keyboard_check(vk_alt)) {
	//	//follow_player = false
	//	global.shake = true
	//	alarm[0] = 100
	//}

}
#endregion


//CAMERA
else {

	if (follow_player) {
	
		camera_set_view_pos(view_camera[0], 
							camera_x_pos,
							camera_y_pos
					
		)
	
	}

}