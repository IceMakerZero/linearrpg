/// @description Position of View
camera_set_view_size(VIEW_CAM, _cam_view_width, _cam_view_height);
var _target = global.screen_dimension_handler.obj_cam_follow

if(instance_exists(_target))
{
	var _x = clamp(_target.x - _cam_view_width/2, 0, room_width-_cam_view_width);
	var _y = clamp(_target.y - _cam_view_height/2, 0, room_height-_cam_view_height);
	
	if(shake_length != 0) {
		_x += random_range(-shake_length, shake_length);
		_y += random_range(-shake_length, shake_length);
	}
	
	var _cur_cam_x = camera_get_view_x(VIEW_CAM);
	var _cur_cam_y = camera_get_view_y(VIEW_CAM);
	
	var _speed = .1;
	
	camera_set_view_pos(VIEW_CAM, 
						lerp(_cur_cam_x, _x, _speed),
						lerp(_cur_cam_y, _y, _speed));
}