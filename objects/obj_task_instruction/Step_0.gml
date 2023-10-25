if (place_meeting(x,y,obj_female_player))
{
	
		if(myTextbox == noone)
		{
			myTextbox = instance_create_layer(x, y+190, "Text", obj_firelvl1_task_instruction)
			myTextbox.text = myText
			myTextbox.creator = self
			myTextbox.name = myName
		}
	
}
else {
	if(myTextbox != noone)
	{
		instance_destroy(myTextbox)
		myTextbox = noone
	}
}