if (data == 1 && !obj_score.task_incremented_wire) {
    obj_score.task_completed_wire += 25;
    obj_score.task_incremented_wire = true;
}
if(candle_data == 1 && !obj_score.task_incremented_candle) {
	obj_score.task_completed_candle += 25;
    obj_score.task_incremented_candle = true;
}
if(stove_data == 1 && !obj_score.task_incremented_stove) {
	obj_score.task_completed_stove += 25;
	obj_score.task_incremented_stove = true;
}