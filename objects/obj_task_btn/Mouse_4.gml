if(global.task == 1){
	global.lastRoom = room;
	obj_player.x=600;
	obj_player.y=250;
	room_goto(rm_fire_l1_overloaded_socket_task)
}
else if(global.task == 2){
	global.lastRoom = room;
	global.ps_candle = part_system_create(Candle)
	part_system_position(global.ps_candle,x+225,y+100)
	room_goto(rm_fire_l1_candle)
}