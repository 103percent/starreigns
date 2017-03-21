///scr_drawHud

var hudset = 0.9
var barx1 = room_width*0.125;
var barx2 = room_width*0.33;
var barx3 = room_width*0.63;
var barx4 = room_width*0.875;
var bartop = room_height*0.8 + 20;
var barbottom = bartop + 90;
var barwidth = 20;
var textpad = 15;
var bar_back = c_white;
var bar_fill = c_green;
var bar_empty = c_green;

draw_set_colour(c_blue);
draw_set_font(fnt_basic);

draw_set_halign(fa_center);
draw_set_valign(fa_center);

/*
draw_text(room_width/2 + 100, room_height*hudset, "Tech = " + string(global.core0));
draw_text(room_width/2 - 100, room_height*hudset, "Econ = " + string(global.core1));
draw_text(room_width/2 + 100, room_height*hudset + 20, "Ship = " + string(global.core2));
draw_text(room_width/2 - 100, room_height*hudset + 20, "Crew = " + string(global.core3));
*/
draw_healthbar(barx1, bartop, barx1 + barwidth, barbottom, (global.core0), bar_back, bar_empty, bar_fill, 3, true, true);
draw_text(barx1 + textpad, barbottom + textpad, "Tech");
draw_healthbar(barx2, bartop, barx2 + barwidth, barbottom, (global.core1), bar_back, bar_empty, bar_fill, 3, true, true);
draw_text(barx2 + textpad, barbottom + textpad, "Econ");
draw_healthbar(barx3, bartop, barx3 + barwidth, barbottom, (global.core2), bar_back, bar_empty, bar_fill, 3, true, true);
draw_text(barx3 + textpad, barbottom + textpad, "Ship");
draw_healthbar(barx4, bartop, barx4 + barwidth, barbottom, (global.core3), bar_back, bar_empty, bar_fill, 3, true, true);
draw_text(barx4 + textpad, barbottom + textpad, "Crew");
