// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shakeScreen(camera, xpos, ypos, shakeLevel){
	
	camera_set_view_pos(camera,
						xpos + random_range(-shakeLevel, shakeLevel),
						ypos + random_range(-shakeLevel, shakeLevel)
	)
	
}