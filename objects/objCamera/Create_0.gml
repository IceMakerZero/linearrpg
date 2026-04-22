move_speed = 10;
#macro VIEW_CAM view_camera[0]

_screen_width	= 1920;
_screen_height	= 1080;
_view_width		= _screen_width/6;
_view_height	= _screen_height/6;

_window_scale = 6;

_view_zoom_out = 1.0;
_cam_view_width = _view_width * _view_zoom_out;
_cam_view_height = _view_height * _view_zoom_out;

shake_length = 0;
shake_time = 0;

window_set_size(_view_width*_window_scale, _view_height*_window_scale);
alarm[0] = 1;

surface_resize(application_surface, _view_width*_window_scale, _view_height*_window_scale);

