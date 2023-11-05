if (keyboard_check_pressed(vk_enter))
{
	if (charCount < string_length(text[page]))
	{
		charCount = string_length(text[page]);
	}
	else if (page+1 < array_length(text))
	{
		page+=1;
		charCount = 0;
	}
	else {
		if(obj_data.candle_data != 1){
			global.task = 2;
			task = instance_create_layer(x, y, "Character", obj_task_btn)
		}
		else{
			instance_destroy()
			creator.alarm[1] = 1;
		}
	}
}