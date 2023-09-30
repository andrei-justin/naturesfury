if (audio_is_playing(snd_main)) {
	
} else {
	audio_play_sound(snd_main, 0, false)
	audio_sound_gain(snd_main, 1, 500)
}


audio_play_sound(sRain, 0, true)
audio_sound_gain(sRain, 0.5, 500)