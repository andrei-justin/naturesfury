if (!has_been_interacted)
{
	if (collision_circle(x, y, radius, obj_player, false, true))
	{
		has_been_interacted = true;
		
		//switch image
		image_index = 1;
		instance_destroy(obj_door_collision);
		
		instance_destroy(popup_id);
		
	}
}