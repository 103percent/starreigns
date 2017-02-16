///scr_drawCardDialog();

//pull the various letters from the text
if (time < text_length)
    {
        time += spd
        print = string_copy(text, 0, time)
    }

//Set the fade in
draw_set_alpha(alpha)
if (alpha < 1)
    {  
        alpha += spd/10;
    }
else
    {
        alpha = 1;
    }

//draw the text
draw_set_font(font);
draw_set_color(c_black);

draw_rectangle(x-(box_width/2), y, x+(box_width/2), y+box_height, 0)
draw_set_color(c_white)
draw_rectangle(x-(box_width/2), y, x+(box_width/2), y+box_height, 1)

draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

draw_text_ext(x-(text_width/2), y+padding, print, spacing, max_length);

draw_set_alpha(1); 


    

