

if (collision_rectangle(x - (sprite_width / 15),
						y - (sprite_height / 15),
						x + (sprite_width / 15),
						y + (sprite_height / 15),
						obj_player,
						false,
						true
						)) {
	
	if (arrow_down.image_alpha == 0) {
		instance_activate_layer("Collision")
		
		if (arrow_up.image_alpha == 1 && arrow_down.image_alpha == 0) {
			obj_player.image_alpha = 1
		}		
	}
	
	if (image_index < image_number) {
		image_speed = 1
		
	} else {
		image_speed = 0
	}
	
	
	
} else {
	if (image_index > 0) {
		image_speed = -1
	} else {
		image_speed = 0
	}
}