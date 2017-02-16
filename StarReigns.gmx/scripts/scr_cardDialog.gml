///scr_cardDialog(text, x, y);

//Draws the card dialogue on the screen. 

var txt_x = argument[1];
var txt_y = argument[2];
var txt_spd = 1;
txt = instance_create(txt_x, txt_y, obj_text)
with txt
    {
        padding = 10;
        max_length = 460;
        text = argument[0];
        spd = txt_spd;
        font = fnt_basic;
        draw_set_font(font);
        text_length = string_length(text);
        font_size = font_get_size(fnt_basic);
        spacing = font_size + (font_size/2)
        
        text_width = string_width_ext(text,spacing, max_length);
        text_height = string_height_ext(text, spacing, max_length);
        
        box_width = text_width + (padding*2);
        box_height = text_height + (padding*2);   
    }
