if (collision_rectangle(x - (sprite_width / 2),
						y - (sprite_height / 2),
						x + (sprite_width / 2),
						y + (sprite_height / 2),
						obj_female_player,
						false,
						true
						)) {
	//show_debug_message("Ugh you're inside me!")
	instance_activate_layer("Popups")
	
} else {
	//show_debug_message("Nah you're not...")
	instance_deactivate_layer("Popups")
}