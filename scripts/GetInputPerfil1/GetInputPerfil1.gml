function GetInputPerfil1(){
	eixoX = keyboard_check(ord(glVetPlayersKeyboard[0, 1])) - keyboard_check(ord(glVetPlayersKeyboard[0, 0]));
	eixoY = keyboard_check(ord(glVetPlayersKeyboard[0, 3])) - keyboard_check(ord(glVetPlayersKeyboard[0, 2]));
	
	attack = keyboard_check_pressed(ord(glVetPlayersKeyboard[0, 4]));
	roll = keyboard_check_pressed(ord(glVetPlayersKeyboard[0, 5]));
	dash = keyboard_check_pressed(ord(glVetPlayersKeyboard[0, 6]));
	skill1 = keyboard_check_pressed(ord(glVetPlayersKeyboard[0, 7]));
	collect = keyboard_check(vk_space);
}