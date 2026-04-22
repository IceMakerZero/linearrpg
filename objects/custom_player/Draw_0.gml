draw_sprite(custom_player_body, 0, x,y);
var _head_sprite = ds_list_find_value(skin_color_list, skin_color_index);
draw_sprite_ext(custom_player_head, 0, x,y, 1,1,0, _head_sprite, 1);

// Hair
var _hair_sprite = ds_list_find_value(hair_style_list, hair_style_index);
var _hair_color = ds_list_find_value(hair_color_list, hair_color_index);
draw_sprite_ext(_hair_sprite, 0, x,y-6, 1,1,0, _hair_color, 1);

// Eye
var _eye_color = ds_list_find_value(eye_color_list, eye_color_index);
draw_sprite_ext(custom_player_eye, 0, x,y, 1,1,0, _eye_color, 1);
