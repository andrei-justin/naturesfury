draw_sprite_ext(spr_info_bg, 0, x, y, 1, 1, 0, c_white, 0.7)

draw_sprite(spr_task_info, 0, x, y);
//draw_sprite_ext(spr_task_info, 0, x, y, 1, 1, 0, c_black, 0.8);
draw_set_color(c_black);
draw_set_font(fnt_fire_instruction);

if (charCount < string_length(text[page])) 
{
	charCount += 0.5;
}
textPart = string_copy(text[page], 1, charCount);

draw_text(x-275, y+50, name);
draw_text_ext(x, y+stringHeight+yBuffer, textPart, stringHeight, boxWidth);
draw_sprite(spr_fireman,0,x,y)
draw_sprite(spr_overloaded_socket_info,0,x-300,y-200)
