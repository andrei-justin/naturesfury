#region RIGHT GLASSDOOR
if (

	collision_line(
	
		right_gd.x - ((obj_player.sprite_width / 2) - (right_gd.sprite_width / 2)),
		right_gd.y - (sprite_height / 2),
		right_gd.x - ((obj_player.sprite_width / 2) - (right_gd.sprite_width / 2)),
		right_gd.y + (sprite_height / 2),
		obj_player,
		false,
		true
	
	) and id == right_gd

) {
	
	show_debug_message("Right! You're inside me!")
	obj_player.x = clamp(
						obj_player.x,
						camera_get_view_x(view_camera[0]) - (camera_get_view_width(view_camera[0]) / 2),
						right_gd.x - ((obj_player.sprite_width / 2) - (right_gd.sprite_width / 2))
					)

}
#endregion


#region LEFT GLASSDOOR
if (

	collision_line(
	
		left_gd.x + ((obj_player.sprite_width / 2) - (left_gd.sprite_width / 2)),
		left_gd.y - (left_gd.sprite_height / 2),
		left_gd.x + ((obj_player.sprite_width / 2) - (left_gd.sprite_width / 2)),
		left_gd.y + (left_gd.sprite_height / 2),
		obj_player,
		false,
		true
	
	) and id == left_gd

) {
	
	show_debug_message("Left! You're inside me!")
	obj_player.x = clamp(
						obj_player.x,
						camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2),
						left_gd.x + ((obj_player.sprite_width / 2) - (left_gd.sprite_width / 2))
					)

}
#endregion

