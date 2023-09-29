//draw_sprite(sMenuObjSpr, 0, x+0, y+0);

var isHovered = false;
var isClicked = false;



if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height))
{
	isHovered = true;
	
	if (mouse_check_button_pressed(mb_left))
	{
		isClicked = true;
	}
}	

if (isClicked)
{
	draw_sprite(sMenuObjSpr, 1, x, y);
}
else if (isHovered)
{
	draw_sprite_ext(sMenuObjSpr,      // Sprite index
                1,               // Image index
                x + 0,           // X position
                y + 0,           // Y position
                1,               // X scale factor (1 for no change)
                1,               // Y scale factor (1 for no change)
                0,               // Rotation angle
                c_white,         // Color (in this case, black for darkness)
                1);            // Alpha (0.5 for 50% opacity, adjust as needed)
}
else 
{
	draw_sprite_ext(sMenuObjSpr, 1, x, y, 1, 1, 0, c_gray, 1);
}
