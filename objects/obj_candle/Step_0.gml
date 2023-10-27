if (place_meeting(x,y,obj_player))
{
	popup_e.visible = true;
	if(keyboard_check_pressed((ord("E")))){
		if(myTextbox == noone)
		{
			fireman.visible = true;
			myTextbox = instance_create_layer(x+240, y+10, "Text", obj_interact_candle)
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
		fireman.visible = false;
	}
	if(myTextbox != noone)
	{
		instance_destroy(myTextbox)
		myTextbox = noone;
	}
}