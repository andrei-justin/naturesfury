if (global.disaster_type == 1) {

	if (global.shake) {
		
		alarm[0] = 10
		y += 5
	
	}

}

if (

	collision_rectangle(
	
		x - (sprite_width / 2),
		y - (sprite_height / 2),
		x + (sprite_width / 2),
		y + (sprite_height / 2),
		obj_ground,
		true,
		true
	
	)

) {
	
	global.shake = false
	y = y

}