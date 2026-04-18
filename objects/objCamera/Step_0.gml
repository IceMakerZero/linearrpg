/// @description Focus - Fullscreen
if(window_has_focus())
{
	window_set_fullscreen(true);
	window_set_size(_view_width*_window_scale, _view_height*_window_scale);
}