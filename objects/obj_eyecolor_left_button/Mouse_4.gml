custom_player.eye_color_index -= 1;
if(custom_player.eye_color_index < 0)
	custom_player.eye_color_index = ds_list_size(custom_player.eye_color_list)-1;