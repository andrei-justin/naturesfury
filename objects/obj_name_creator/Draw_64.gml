draw_set_font(fnt_name_creator);
fontSize = font_get_size(fnt_name_creator);
BUFFER = ceil(fontSize / 2);

#region

startX = 850;
startY = 150;

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(startX, startY, currentName);

#endregion

#region

startY = 250;
startX = 700;
var charCount = 1;

for (var yy = 0; yy < yLetters; yy++){
	for (var xx = 0; xx < xLetters; xx++){
		#region 
		
		var letter = a_letters[xx, yy];
		
		if (showLowerCase) && (charCount <= 26){
			uniCode = ord(letter) + 32;
			letter = chr(uniCode);
		}
		
		var drawX = startX + (xx * (fontSize * 2));
		var drawY = startY + (yy * (fontSize + BUFFER));
		
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_text(drawX, drawY, letter);
		
		if (xx == gridX && yy = gridY) draw_sprite(spr_cursor, 0, drawX, drawY); 
		
		charCount ++;
		
		#endregion
	}
}

#endregion