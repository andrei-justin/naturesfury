if(mytimer > 0){
	mytimer=mytimer-delta_time/1000000;
}
else{
	mytimer=0;
	
}

showTime = ceil(mytimer);

if(showTime == 0 && obj_data.data == noone){
	room_goto(rm_fire_l1)
	obj_player.x = 600;
	obj_player.y = 250;
}