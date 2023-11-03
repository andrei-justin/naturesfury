if(!place_meeting(x,y,obj_outlet))
{
	obj_data.data = 1;
	room_goto(rm_fire_l1)
	obj_player.x = 600;
	obj_player.y = 250;
}
else {
	obj_data.data = noone;
}