if (global.default_player == 1) {

	sprite_index = spr_female_char_idle

}
else if(oGameData.picked == 0)
{
	//instance_change(obj_female_player, true);
	sprite_index = spr_female_char_idle
}

else if(oGameData.picked == 1)
{
	instance_change(oMalePlayer, true);
}

//horizontal_speed = 0
//vertical_speed = 0
//GRAVITY = 0.5
//JUMP_FORCE = 10
//WALKING_SPEED = 5
//has_control = true
on_the_ground = true

move_speed = 4;
jump_speed = 20;

move_x = 0;
move_y = 0;

global.hurt = false