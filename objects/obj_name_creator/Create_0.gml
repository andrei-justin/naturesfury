#region

global.PL = false;
global.PR = false;
global.PU = false;
global.PD = false;

global.POK = false;
global.PCAN = false;

global.PSEL = false;

global.HL = false;
global.HR = false;
global.HU = false;
global.HD = false;

global.RL = false;
global.RR = false;
global.RU = false;
global.RD = false;

#endregion

currentName = "MyPlayer";

buttonReady = false;
buttonTimer = 0;
timeTillButtonReady = 10;

#macro MAX_LETTERS_IN_NAME 16

showLowerCase = false;

gridX = 0;
gridY = 0;

letterString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ   ";

xLetters = 10;
yLetters = 3;

charCount = 1;

for (var yy = 0; yy < yLetters; yy++){
	for (var xx = 0; xx < xLetters; xx++){
		if (charCount <= 29){
			a_letters[xx, yy] = string_char_at(letterString, charCount);
		}else {
			a_letters[xx, yy] = "OK"	
		}
		charCount ++;
	}
}