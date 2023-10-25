draw_sprite(spr_fire_task_instruction, 0, x, y);
draw_set_color(c_white);
draw_set_font(fnt_fire_instruction);

if (charCount < string_length(text[page])) 
{
	charCount += 0.5;
}
textPart = string_copy(text[page], 1, charCount);

draw_text(x, y-30, name);

draw_text_ext(x, y+stringHeight-yBuffer, textPart, stringHeight, boxWidth);