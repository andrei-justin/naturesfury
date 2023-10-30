#region //EARTHQUAKE
if (global.disaster_type == 1) {

	if (keyboard_check(vk_shift)) {
		follow_player = false
		shake = true
		alarm[0] = 300
	}

	if (keyboard_check(vk_alt)) {
		follow_player = true
		shake = true
		alarm[0] = 300
	}



	//camera_set_view_pos(view_camera[0],
	//					x - camera_get_view_width(view_camera[0]) / 2,
	//					y - camera_get_view_height(view_camera[0]) / 2
	//)

	if (follow_player && shake) {
		camera_set_view_pos(view_camera[0],
							camera_x_pos + random_range(-shake_level, shake_level),
							camera_y_pos + random_range(-shake_level, shake_level)
		)
	}

}
#endregion


//CAMERA
if (follow_player) {
	
	var camera_x_pos = obj_player.x - (camera_get_view_width(view_camera[0]) / 2)
	var camera_y_pos = obj_player.y - (camera_get_view_height(view_camera[0]) / 2)
	camera_x_pos = clamp(camera_x_pos, 0, room_width - camera_get_view_width(view_camera[0]))
	camera_y_pos = clamp(camera_y_pos, 0, room_height - camera_get_view_height(view_camera[0]))
	camera_set_view_pos(view_camera[0], 
						camera_x_pos,
						camera_y_pos
					
	)
	
	//x = obj_player.x
	//y = obj_player.y
	
}