// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playAnimation(object, speed = 1, once = false){
	
	var obj = object
	var animation_speed = speed
	var playOnce = once
	
	switch (playOnce) {
		case true:
			while (obj.image_index <= obj.image_number - 1) {
				obj.image_speed = animation_speed
			}
			break
		
		case false:
			obj.image_speed = animation_speed
			break
	}
	
}