//movement

move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"))
move_x *= move_speed


if (place_meeting(x, y+2, obj_ground))
{
	move_y = 0
	on_the_ground = true
	
	if (!place_meeting(x+move_x, y+2, obj_ground) && place_meeting(x+move_x, y+10, obj_ground))
	{
			move_y = abs(move_x)
			move_x = 0
	}
	
	if (keyboard_check_pressed(vk_space) and on_the_ground)
	{
		move_y = -jump_speed
	}
}
else if (move_y < 10)
{
	move_y += 1
	on_the_ground = false
}

//from old code
if (place_meeting(x + move_x, y, obj_door_collision)) {
	while (!place_meeting(x + sign(move_x), y, obj_door_collision)) {
	    x = x + sign(move_x)
	}
	move_x = 0
}

if (place_meeting(x, y + move_y, obj_door_collision)) {
	while (!place_meeting(x, y + sign(move_y), obj_door_collision)) {
	    y = y + sign(move_y)
	}
	move_y = 0
	//on_the_ground = true
}
//---

move_and_collide(move_x, move_y, obj_ground, 4, 0, 0, move_speed, -1)


//animation
if (keyboard_check(ord("D"))) {
	image_xscale = 1
	sprite_index = spr_female_char_run
} else if (keyboard_check(ord("A"))) {
	image_xscale = -1
	sprite_index = spr_female_char_run
} else if (keyboard_check(ord("S"))) {
	sprite_index = spr_female_char_crouch
} 

else {
	sprite_index = spr_female_char_idle
}




//EARTHQUAKE
//elevator mechanism code
if (global.disaster_type == 1) { //earthquake 
	if (arrow_down.image_alpha == 1 && keyboard_check_pressed(vk_down)) {
		
		image_alpha = 0
		alarm[0] = 45
		
	}
	
	if (global.hurt) {

		sprite_index = spr_female_char_hurt
		room_restart()
		
		//if (image_index == image_number) {
	
		//	global.hurt = false
		
		//}
		
	}
	
}













// Get Player input

//if (has_control) {
//   key_left = keyboard_check(vk_left) || keyboard_check(ord("A"))
//   key_right = keyboard_check(vk_right) || keyboard_check(ord("D"))
//   key_jump = keyboard_check_pressed(vk_space)
//}
//else {
//   key_right = 0
//   key_left = 0
//   key_jump = 0
//}

//// Calculate movement
//if (has_control) {
//	var move = key_right - key_left
//	horizontal_speed = move * WALKING_SPEED
//	vertical_speed = vertical_speed + GRAVITY
//}

//if (on_the_ground) && (key_jump)
//{
//    vertical_speed = -JUMP_FORCE
//    on_the_ground = false
//}

////Horizontal Collision
//if (place_meeting(x + horizontal_speed, y, obj_ground)) {
//    while (!place_meeting(x + sign(horizontal_speed), y, obj_ground)) {
//        x = x + sign(horizontal_speed)
//    }
//    horizontal_speed = 0
//}
//else if (place_meeting(x + horizontal_speed, y, obj_door_collision)) {
//    while (!place_meeting(x + sign(horizontal_speed), y, obj_door_collision)) {
//        x = x + sign(horizontal_speed)
//    }
//    horizontal_speed = 0
//}
//x = x + horizontal_speed

// Vertical Collision
//if (place_meeting(x, y + vertical_speed, obj_ground)) {
//    while (!place_meeting(x, y + sign(vertical_speed), obj_ground)) {
//        y = y + sign(vertical_speed)
//    }
//    vertical_speed = 0
//	on_the_ground = true
//}
//else if (place_meeting(x, y + vertical_speed, obj_door_collision)) {
//    while (!place_meeting(x, y + sign(vertical_speed), obj_door_collision)) {
//        y = y + sign(vertical_speed)
//    }
//    vertical_speed = 0
//	on_the_ground = true
//}
//y = y + vertical_speed

//// Animation 
//if (!place_meeting(x, y + 1, obj_ground)) {
//    sprite_index = spr_female_char_run
//    image_speed = 0
//    if (sign(vertical_speed) > 0) {
//        image_index = 1
//    }
//    else {
//        image_index = 0
//    }
//}
//else {
//    image_speed = 1
//    if (horizontal_speed == 0) {
//        sprite_index = spr_female_char_idle
//    }
//    else {
//        sprite_index = spr_female_char_run
//    }
//}

//if (horizontal_speed != 0) {
//    image_xscale = sign(horizontal_speed)
//}