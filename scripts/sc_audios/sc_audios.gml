// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rainSoundEffect(status) {
	if (status == true) {
		audio_sound_gain(sRain, 1, 500)
	}

	if (status == false) {
		audio_sound_gain(sRain, 0, 500)
	}
}