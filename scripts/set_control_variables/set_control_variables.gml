
function set_control_variables(){
	globalvar glVetPlayersKeyboard;
	glVetPlayersKeyboard[0, 0] = "G";
	glVetPlayersKeyboard[0, 1] = "J";
	glVetPlayersKeyboard[0, 2] = "Y";
	glVetPlayersKeyboard[0, 3] = "H";
	glVetPlayersKeyboard[0, 4] = "A";
	glVetPlayersKeyboard[0, 5] = "S";
	glVetPlayersKeyboard[0, 6] = "D";
	glVetPlayersKeyboard[0, 7] = "Q";

	glVetPlayersKeyboard[1, 0] = vk_left;
	glVetPlayersKeyboard[1, 1] = vk_right;
	glVetPlayersKeyboard[1, 2] = vk_up;
	glVetPlayersKeyboard[1, 3] = vk_down;
	glVetPlayersKeyboard[1, 4] = vk_numpad1;
	glVetPlayersKeyboard[1, 5] = vk_numpad2;
	glVetPlayersKeyboard[1, 6] = vk_numpad3;
	glVetPlayersKeyboard[1, 7] = vk_numpad4;
	globalvar glVetKeyboardPerfils;
	glVetKeyboardPerfils[0] = GetInputPerfil1;
	glVetKeyboardPerfils[1] = GetInputPerfil2;
}