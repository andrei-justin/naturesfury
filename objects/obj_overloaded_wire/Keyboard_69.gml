if (!has_been_interacted)
{
	if (collision_circle(x, y, radius, obj_female_player, false, true))
	{
		has_been_interacted = true;
		
		//switch image
		
		
		instance_destroy(popup_id);
		
	}
}