///scr_drawHud

var hudset = 0.9

draw_set_colour(c_blue);
draw_set_font(fnt_basic);

draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_text(room_width/2 + 100, room_height*hudset, "Tech = " + string(global.core0));
draw_text(room_width/2 - 100, room_height*hudset, "Econ = " + string(global.core1));
draw_text(room_width/2 + 100, room_height*hudset + 20, "Ship = " + string(global.core2));
draw_text(room_width/2 - 100, room_height*hudset + 20, "Crew = " + string(global.core3));
