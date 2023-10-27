if (place_meeting(x,y,obj_player))
{
	popup_e.visible = true;
	if(keyboard_check_pressed((ord("E")))){
		if(myTextbox == noone)
		{
			myTextbox = instance_create_layer(x-30, y+50, "Text", obj_interact_fire_extinguisher)
			myTextbox.text = myText
			myTextbox.creator = self
			myTextbox.name = myName
		}
	}
}
else {
	if(!place_meeting(x,y,obj_player))
	{
		popup_e.visible = false;
	}
	if(myTextbox != noone)
	{
		instance_destroy(myTextbox)
		myTextbox = noone;
	}
}