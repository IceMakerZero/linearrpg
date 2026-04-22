custom_player.skin_color_index -= 1;
if(custom_player.skin_color_index < 0)
	custom_player.skin_color_index = ds_list_size(custom_player.skin_color_list)-1;