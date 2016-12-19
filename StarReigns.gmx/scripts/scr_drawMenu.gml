///scr_drawMenu
var text;

if global.setloss = true
{
 text = "Loss ON"
}
else
{
 text = "Loss OFF"
}

draw_set_colour(c_red);
draw_set_font(fnt_start);

draw_set_halign(fa_center);
draw_set_valign(fa_center);

//draw start text
draw_text(room_width/2, room_height/2, "Click to Start game");

//draw loss toggle text
draw_text(room_width/2, 20, "Toggle loss");
draw_text(room_width/2, 50, text);

//draw save wipe text
draw_text(room_width/2, 850, "Wipe Save");
