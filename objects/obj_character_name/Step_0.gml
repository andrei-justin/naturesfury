if (keyboard_check_pressed(ord("1")) && !instance_exists(obj_name_creator)){
	nameCreator = instance_create_depth(0, 0 , depth - 50, obj_name_creator);
	nameCreator.charToName = id;
	nameCreator.currentName = name;
}