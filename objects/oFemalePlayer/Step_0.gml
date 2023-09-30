// Get Player input	 

if  (hascontrol)
{
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}
// Calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

canjump -= 1;
if (canjump > 0) && (key_jump)
{
	vsp = -5; 
	canjump = 0;
}

// Horizontal Collision
if (place_meeting(x+hsp,y,obj_ground))
{
	while (!place_meeting(x+sign(hsp),y,obj_ground))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// Vertical Collision
if (place_meeting(x,y+vsp,obj_ground))
{
	while (!place_meeting(x,y+sign(vsp),obj_ground))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;


// Animation 
if (!place_meeting(x,y+1,obj_ground))
{
	sprite_index = sFemaleCharacterIdle;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	
}
else{
	canjump = 10;
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sFemaleCharacterIdle;
	}
	else{
		sprite_index = spr_female_character_run;
	}
}

if (hsp != 0) image_xscale = sign(hsp);
