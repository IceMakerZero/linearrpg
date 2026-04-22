custom_player.hair_style_index -= 1;
if(custom_player.hair_style_index < 0)
	custom_player.hair_style_index = ds_list_size(custom_player.hair_style_list)-1;