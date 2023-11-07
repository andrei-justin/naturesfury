if (global.disaster_type == 1) {
	
	// will fall if shake and not contact with office table
	if (global.shake and !collision_rectangle(
	
							x - (sprite_width / 2),
							y - (sprite_height / 2),
							x + (sprite_width / 2),
							y + (sprite_height / 2),
							obj_office_table,
							true,
							true
	
						)
	) {
		
		y += 10
	
	}
	
	//will shake if the player collide in the line and if the aircon don't colide with table
	if (
	
		collision_line(
		
			x,
			y,
			obj_office_table.x,
			obj_office_table.y,
			obj_player,
			true,
			false
		
		) and !collision_rectangle(
	
			x - (sprite_width / 2),
			y - (sprite_height / 2),
			x + (sprite_width / 2),
			y + (sprite_height / 2),
			obj_office_table,
			true,
			true
	
		)
	
	) {
	
		global.shake = true
		alarm[0] = 10
	
	}
	
	//will hurt if collide with player and not with office table
	if (

		collision_rectangle(
	
			x - (sprite_width / 2),
			y - (sprite_height / 2),
			x + (sprite_width / 2),
			y + (sprite_height / 2),
			obj_player,
			true,
			true
	
		) and !collision_rectangle(
	
			x - (sprite_width / 2),
			y - (sprite_height / 2),
			x + (sprite_width / 2),
			y + (sprite_height / 2),
			obj_office_table,
			true,
			true
	
		)

	) {
	
		global.hurt = true

	}

}

//if (

//	collision_rectangle(
	
//		x - (sprite_width / 2),
//		y - (sprite_height / 2),
//		x + (sprite_width / 2),
//		y + (sprite_height / 2),
//		obj_office_table,
//		true,
//		true
	
//	)

//) {
	
//	global.shake = false
//	y = y

//}


