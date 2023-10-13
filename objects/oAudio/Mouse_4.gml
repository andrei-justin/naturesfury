if (sprite_index == sSoundON) {
	sprite_index = sSoundOFF
	global.rainSE = false
}
if (sprite_index == sSoundOFF) {
	sprite_index = sSoundON
	global.rainSE = true
}
rainSoundEffect(global.rainSE)