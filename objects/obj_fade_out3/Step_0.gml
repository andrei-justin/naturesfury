{
	image_alpha = min(1.0, image_alpha + FADE_OUT_DELTA);
	
	if (image_alpha >= 1.0)
	{
		room_goto(rDisasterSelection);
	}
}