if (global.disaster_type == 1) {

	if (global.shake and global.hurt == false) {
		
		y += 10
	
	}

}

if (

	collision_rectangle(
	
		x - (sprite_width / 2),
		y - (sprite_height / 2),
		x + (sprite_width / 2),
		y + (sprite_height / 2),
		obj_office_table,
		true,
		true
	
	)

) {
	
	global.shake = false
	y = y

}


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