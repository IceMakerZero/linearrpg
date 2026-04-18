function GetInputPerfil2(){
	eixoX = keyboard_check(glVetPlayersKeyboard[1, 1]) - keyboard_check(glVetPlayersKeyboard[1, 0]);
	eixoY = keyboard_check(glVetPlayersKeyboard[1, 3]) - keyboard_check(glVetPlayersKeyboard[1, 2]);
	
	attack = keyboard_check_pressed(glVetPlayersKeyboard[1, 4]);
	roll = keyboard_check_pressed(glVetPlayersKeyboard[1, 5]);
	dash = keyboard_check_pressed(glVetPlayersKeyboard[1, 6]);
	skill1 = keyboard_check_pressed(glVetPlayersKeyboard[1,7]);
	collect = keyboard_check(vk_space);
}