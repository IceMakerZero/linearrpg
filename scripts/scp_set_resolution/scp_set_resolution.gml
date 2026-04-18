/// Dinamic Resolution
// ************************ Script não funciona mais junto com a Camera ***********************
function scp_set_resolution(){
	//Aspec Ratio
	var _aspec = display_get_width() / display_get_height();
	var _view_h = display_get_height() * (global.screen_dimension_handler.resol_porcent/100);
	var _view_w = round(_view_h * _aspec);
	
	view_camera[0] = camera_create_view(0, 0, _view_w, _view_h);
	
	// Set Views and Rooms 
	room_set_view_enabled(room, true);
	//room_set_view(room,0,true,0,528,_view_w,_view_h,0,0,_view_w,_view_h,300,300,-1,-1,objPlayer);
	room_set_viewport(room,0,true,0,0,_view_w,_view_h);
    

	view_enabled = true;
	view_visible[0] = true;
	view_wport[0] = _view_w;
	view_hport[0] = _view_h;
	view_set_visible(0,true);
	
	
	// Zoom da Camera
	camera_set_view_size(view_camera[0], _view_w , _view_h);
	//camera_set_view_size()
	camera_set_view_target(view_camera[0], global.screen_dimension_handler.obj_camera);
	camera_set_view_border(view_camera[0], _view_w/2, _view_h/2);
	camera_set_view_speed(view_camera[0], -1, -1);
	
	view_set_wport(0, _view_w);
	view_set_hport(0, _view_h);
	
	room_set_view_enabled(room, true);
	room_set_viewport(room,0,true,0,0,_view_w,_view_h);
	
	// Set Window and Surface
	surface_resize(application_surface, _view_w, _view_h);
	window_set_size(_view_w, _view_h);
	//window_set_position((display_get_width()-_view_w)/2, ((display_get_height()-_view_h)/2));
	window_center();
}

/*
// camera
view_visible[0] = true;
view_wport[0] = 1600;
view_hport[0] = 900;
camera_set_view_size(view_camera[0], view_wport[0], view_hport[0]);
camera_set_view_target(view_camera[0], objCamera);
camera_set_view_border(view_camera[0], view_wport[0]/2, view_hport[0]/2);
*/