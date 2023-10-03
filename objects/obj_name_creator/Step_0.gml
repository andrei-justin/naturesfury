#region

// HELD

if (keyboard_check(vk_left)) global.HL = true;
else global.HL = false;

if (keyboard_check(vk_right)) global.HR = true;
else global.HR = false;

if (keyboard_check(vk_up)) global.HU = true;
else global.HU = false;

if (keyboard_check(vk_down)) global.HD = true;
else global.HD = false;

// RELEASED

if (keyboard_check_released(vk_left)) global.RL = true;
else global.RL = false;

if (keyboard_check_released(vk_right)) global.RR = true;
else global.RR = false;

if (keyboard_check_released(vk_up)) global.RU = true;
else global.RU = false;

if (keyboard_check_released(vk_down)) global.RD = true;
else global.RD = false;

// PRESSED
if (keyboard_check_pressed(vk_left)) global.PL = true;
else global.PL = false;

if (keyboard_check_pressed(vk_right)) global.PR = true;
else global.PR = false;

if (keyboard_check_pressed(vk_up)) global.PU = true;
else global.PU = false;

if (keyboard_check_pressed(vk_down)) global.PD = true;
else global.PD = false;

if (keyboard_check_pressed(vk_enter)) global.POK = true;
else global.POK = false;

if (keyboard_check_pressed(vk_delete)) global.PCAN = true;
else global.PCAN = false;

if (keyboard_check_pressed(vk_shift)) global.PSEL = true;
else global.PSEL = false;

#endregion


#region 

if (!buttonReady){
	if (global.HD || global.HL || global.HR || global.HU){
		buttonTimer ++;
	}
	
	if (buttonTimer >= timeTillButtonReady){
		buttonTimer = 0;
		buttonReady = true;
	}
	
	if (global.PR || global.PL || global.PU || global.PD){
		buttonTimer = 0;
		buttonReady = true;
	}
}

if (global.RL || global.RR || global.RU || global.RD){
	buttonTimer = 0;
	buttonReady = false;
}

if (buttonReady){
	if (global.PL || global.HL){
		if (gridX - 1) < 0 gridX = (xLetters - 1);
		else gridX--;
	}

	if (global.PR || global.HR){
		if (gridX + 1) >= xLetters gridX = 0;
		else gridX ++;
	}

	if (global.PU || global.HU){
		if (gridY - 1) < 0 gridY = (yLetters - 1);
		else gridY --;
	}

	if (global.PD || global.HD){
		if (gridY + 1) >= yLetters gridY = 0;
		else gridY++;
	}
	
	buttonReady = false;
}



#endregion

#region 

if (global.POK){
	var newLetter = a_letters[gridX, gridY];
	
	if (newLetter == "OK"){
		charToName.name = currentName;
		
		instance_destroy();
	}
	
	letterCount = string_length(currentName);
	
	if (newLetter != "OK") && (letterCount < MAX_LETTERS_IN_NAME){
		if (showLowerCase) && (newLetter != " "){
			uniCode = ord(newLetter) + 32;
			newLetter = chr(uniCode);
		}
		currentName += newLetter;
	}
}

#endregion

#region
	
if (global.PCAN){
	letterCount = string_length(currentName);
	
	if (letterCount >= 1) currentName = string_delete(currentName, letterCount, 1);
}
	
#endregion

#region
	
if (global.PSEL){
	showLowerCase = !showLowerCase;
}

#endregion






