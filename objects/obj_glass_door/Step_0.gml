#region RIGHT GLASSDOOR

if (opened) {

	instance_deactivate_object(right_gd)

} else {

	instance_activate_object(right_gd)

}


if (collision_rectangle(

	right_gd.x - (right_gd.sprite_width),
	right_gd.y - (right_gd.sprite_height / 2),
	right_gd.x + (right_gd.sprite_width / 2),
	right_gd.y + (right_gd.sprite_height / 2),
	obj_player,
	true,
	true
	
) and id == right_gd) {
	
	instance_deactivate_object(right_gd)
	//if (right_gd.x > obj_player.x) {
	
	//	obj_player.x = clamp(obj_player.x, camera_get_view_border_x(view_camera[0]), right_gd.x - ((right_gd.sprite_width / 2) + (obj_player.sprite_width / 2)))
	
	//}
	
	//if (right_gd.x < obj_player.x) {
	
	//	obj_player.x = clamp(obj_player.x, camera_get_view_border_x(view_camera[0]), right_gd.x + ((right_gd.sprite_width / 2) + (obj_player.sprite_width / 2)))
	
	//}
	

}
#endregion

#region LEFT GLASSDOOR

//if (collision_rectangle(

//	left_gd.x - (left_gd.sprite_width / 2),
//	left_gd.y - (left_gd.sprite_height / 2),
//	left_gd.x + (left_gd.sprite_width / 2),
//	left_gd.y + (left_gd.sprite_height / 2),
//	obj_player,
//	true,
//	true
	
//) and id == left_gd) {
	
//	if (left_gd.x > obj_player.x) {
	
//		obj_player.x = left_gd.x - ((left_gd.sprite_width / 2) + (obj_player.sprite_width / 2))
	
//	}
	
//	if (left_gd.x < obj_player.x) {
	
//		obj_player.x = left_gd.x + ((left_gd.sprite_width / 2) + (obj_player.sprite_width / 2))
	
//	}

//}
#endregion

