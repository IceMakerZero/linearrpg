function set_global_variables(){

	set_macros();
	
	global.screen_dimension_handler =
	{
		resol_porcent : 100,
		cam_view_heigh : 768,
		obj_camera : objCamera,
		obj_cam_follow : obj_cam_target,
		
		set_resolution : function() {}
		
	};
	global.screen_dimension_handler.set_resolution = scp_set_resolution;
	
	enum ACTIVE_STATE
	{
		ACTIVE,
		DISABLED	
	}
	
	enum MESSAGE_STATE
	{
		STARTING,
		ACTIVE,
		FINISHED
	}
	
	enum ACTION
	{
		IDLE1,
		MOVE1,
		ATTACK1,
		COLLECT1,
		HURT1,
		DEATH1,
		ROLL1
	}
	
	global.message_handler =
	{
		state : MESSAGE_STATE.STARTING,
		x : camera_get_view_x(VIEW_CAM),
		y : camera_get_view_y(VIEW_CAM) + camera_get_view_height(VIEW_CAM)-40,
		width : camera_get_view_width(VIEW_CAM)-2,
		height : 38,
		message : ds_list_create(),
		text_x : camera_get_view_x(VIEW_CAM)+5,
		text_y : camera_get_view_y(VIEW_CAM) + camera_get_view_height(VIEW_CAM)-36,
		portrait_image : ds_list_create(),
		portrait_x : camera_get_view_x(VIEW_CAM),
		portrait_y : camera_get_view_y(VIEW_CAM) + camera_get_view_height(VIEW_CAM)-80,
		text_color : c_white,
		background_color : c_black,
		message_index : 0
	}
	
	global.player =
	{
		life : 10,
		stamina : 100,
		mana : 100,
		max_stamina : 100
	}
	
	global.enemy =
	{
		
	}

	
	globalvar vetPlayerImagens;
	/*
	vetPlayerImagens[0, 0] = sprPlayer6;
	vetPlayerImagens[1, 0] = sprPlayer6;
	vetPlayerImagens[2, 0] = sprPlayer6Back;
	vetPlayerImagens[3, 0] = sprPlayer6;

	vetPlayerImagens[0, 1] = sprPlayer6Run;
	vetPlayerImagens[1, 1] = sprPlayer6Run;
	vetPlayerImagens[2, 1] = sprPlayer6Run;
	vetPlayerImagens[3, 1] = sprPlayer6Run;

	vetPlayerImagens[0, 2] = sprPlayer6Punch2;
	vetPlayerImagens[1, 2] = sprPlayer6Punch2;
	vetPlayerImagens[2, 2] = sprPlayer6Punch2;
	vetPlayerImagens[3, 2] = sprPlayer6Punch2;

	vetPlayerImagens[0, 3] = sprPlayer6;
	vetPlayerImagens[1, 3] = sprPlayer6;
	vetPlayerImagens[2, 3] = sprPlayer6;
	vetPlayerImagens[3, 3] = sprPlayer6;

	vetPlayerImagens[0, 4] = sprPlayer6Hurt_1;
	vetPlayerImagens[1, 4] = sprPlayer6Hurt_1;
	vetPlayerImagens[2, 4] = sprPlayer6Hurt_1;
	vetPlayerImagens[3, 4] = sprPlayer6Hurt_1;

	vetPlayerImagens[0, 5] = sprPlayerMorte;
	vetPlayerImagens[1, 5] = sprPlayerMorte;
	vetPlayerImagens[2, 5] = sprPlayerMorte;
	vetPlayerImagens[3, 5] = sprPlayerMorte;

	vetPlayerImagens[0, 6] = sprPlayerRoll;
	vetPlayerImagens[1, 6] = sprPlayerRoll;
	vetPlayerImagens[2, 6] = sprPlayerRoll;
	vetPlayerImagens[3, 6] = sprPlayerRoll;
	
	vetPlayerImagens[0, 7] = sprPlayer6Dash;
	vetPlayerImagens[1, 7] = sprPlayer6Dash;
	vetPlayerImagens[2, 7] = sprPlayer6Dash;
	vetPlayerImagens[3, 7] = sprPlayer6Dash;
	
	vetPlayerImagens[0, 8] = sprPlayer6PosDash;
	vetPlayerImagens[1, 8] = sprPlayer6PosDash;
	vetPlayerImagens[2, 8] = sprPlayer6PosDash;
	vetPlayerImagens[3, 8] = sprPlayer6PosDash;
	
	vetPlayerImagens[0, 9] = sprPlayer6SkillLight;
	vetPlayerImagens[1, 9] = sprPlayer6SkillLight;
	vetPlayerImagens[2, 9] = sprPlayer6SkillLight;
	vetPlayerImagens[3, 9] = sprPlayer6SkillLight;
	*/
	globalvar glLstInventImagem;
	globalvar glLstInventQuant;
	globalvar glLstInventAttakindex;
	glLstInventImagem = ds_list_create();
	glLstInventQuant = ds_list_create();
	glLstInventAttakindex = ds_list_create();


	globalvar glAtaqueSelect;
	//glAtaqueSelect = objAttack;
	globalvar glLstObjAttack;
	glLstObjAttack = ds_list_create();
	//ds_list_add(glLstObjAttack, objAttack, objProjPedra);
	
	//global.glSkillHudImage = sprHUDSkillLight;
	
	script_execute(set_control_variables);
}