/// @description Text / Select
draw_self();
if(is_selected)
{
	draw_sprite(spr_menu_item_1, 0, x,y)	;
}


draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_font(fntArial08);
draw_set_alpha(alpha);
draw_text(x,y, item_text);
draw_set_alpha(1);