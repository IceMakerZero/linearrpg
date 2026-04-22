if(state = 1)
{
	if(position_meeting(mouse_x, mouse_y, id) and !is_selected)
	{
		obj_custom_change_button_parent.is_selected = false;
		is_selected = true;
		image_index = 1;
	}
	
	if(!position_meeting(mouse_x, mouse_y, id) and is_selected)
	{
		is_selected = false;
		image_index = 0;
	}

	if(position_meeting(mouse_x, mouse_y, id) and is_selected)
	{
		if(device_mouse_check_button(0, mb_left))
		{
			
		}
	}
}