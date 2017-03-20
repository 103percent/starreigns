///scr_drawDecked(text to draw)

var text = argument[0];

draw_set_colour(c_red);
draw_set_font(fnt_start);
    
draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_text_ext(room_width/2, room_height/2, text, -1, 500);
if (room != rm_map)
{
    draw_text(room_width/2, 850, "Back To Menu");
}
