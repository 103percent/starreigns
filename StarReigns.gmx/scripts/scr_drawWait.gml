///scr_drawWait


var text = date_second_span(date_current_datetime(), global.waittime);

draw_set_colour(c_red);
draw_set_font(fnt_start);
    
draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_text_ext(room_width/2, room_height/2 - 250 ,"Countdown:", -1, 500);
draw_text_ext(room_width/2, room_height/2 - 200 ,text, -1, 500);
