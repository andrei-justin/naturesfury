if (sprite_index == sSoundON) {
	sprite_index = sSoundOFF
	audio_sound_gain(sRain, 0, 500)
} else if (sprite_index == sSoundOFF) {
	sprite_index = sSoundON
	audio_sound_gain(sRain, 1, 500);
}