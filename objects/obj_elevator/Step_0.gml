if (collision_rectangle(x - (sprite_width / 15),
						y - (sprite_height / 15),
						x + (sprite_width / 15),
						y + (sprite_height / 15),
						obj_player,
						false,
						true
						)
	 && obj_player.image_alpha == 1 && id = elevator_top
) {
	
	if (image_index < image_number) {
		image_speed = 1
		if (image_index > 0 && obj_player.image_alpha == 0) {
			image_speed = -1
		}
	} else {
		image_speed = 0
	}
	
} else if (collision_rectangle(x - (sprite_width / 15),
						y - (sprite_height / 15),
						x + (sprite_width / 15),
						y + (sprite_height / 15),
						obj_player,
						false,
						true
						) && id = elevator_bottom) {						
	
	
	instance_activate_layer("Collision")
	if (elevator_bottom.image_index < elevator_bottom.image_number) {
		elevator_bottom.image_speed = 1
		
		
		if (obj_x.image_alpha == 1 or elevator_bottom.image_index > elevator_bottom.image_alpha + 3) {
			obj_player.image_alpha = 1
			global.hurt = true
		}
		
		//if (image_index > 0) {
		//	image_speed = -1
		//}
	} else {
		elevator_bottom.image_speed = 0
	}	
}



else {
	if (image_index > 0) {
		image_speed = -1
	} else {
		image_speed = 0
	}
}					

if (image_index == 1 && obj_player.image_alpha == 0) {
	instance_deactivate_layer("Collision")
}