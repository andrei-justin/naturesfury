draw_sprite_ext(spr_info_bg, 0, x, y, 1, 1, 0, c_white, 0.7)

draw_sprite(spr_task_info, 0, x, y);
//draw_sprite_ext(spr_task_info, 0, x, y, 1, 1, 0, c_black, 0.8);
draw_set_color(c_white);
draw_set_font(fnt_fire_instruction);

if (charCount < string_length(text[page])) 
{
	charCount += 0.5;
}
textPart = string_copy(text[page], 1, charCount);

draw_sprite(spr_fireman,0,x+20,y-145)
draw_sprite(spr_stove_info,0,x-345,y-190)
draw_sprite(spr_task_info_text,0,x-100,y+150);
draw_text(x-275, y+105, name);
draw_text_ext(x-100, y+155, textPart, stringHeight, boxWidth);