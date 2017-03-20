///scr_drawCard

var card_x = room_width/2;
var card_y = room_height/2 - 160;
var optionWidth = 140
var font_size = font_get_size(fnt_basic);
var txt_spacing = (font_size + (font_size/2));
var txt_y = card_y - 30
var txt_back_w = optionWidth + 20;
var box_padding = 20;

//Draw sprite
draw_self();


//Draw test properties
draw_set_colour(c_black);
draw_set_font(fnt_basic);
draw_text(card_x, 40, "set = " + cardset);
//draw_text(x, y + 70, cardstring);
draw_text(card_x, 60, "tags = " + tags);

/*
draw_sprite_ext(spr_arrow, image_index, card_x - 150, card_y - 70, 1, 1, 0, -1, 0.5);
draw_sprite_ext(spr_arrow, image_index, card_x + 150, card_y - 70, 1, 1, 180, -1, 0.5);
*/

if show_neg
{
    var txt_back_h = (string_height_ext(neg_option,txt_spacing, optionWidth)+box_padding)/2;
    var box_x = card_x-(150+(txt_back_w/2))
    draw_set_color(c_white);
    draw_rectangle(box_x, txt_y-(txt_back_h), box_x+txt_back_w, txt_y+(txt_back_h), 0);
    draw_set_colour(c_black);
    draw_rectangle(box_x, txt_y-(txt_back_h), box_x+txt_back_w, txt_y+(txt_back_h), 1);
    draw_text_ext(card_x - 150, card_y - 30, neg_option, -1, optionWidth);

}
if show_pos
{
    var txt_back_h = (string_height_ext(pos_option,txt_spacing, optionWidth)+box_padding)/2;
    var box_x = card_x+ (150+txt_back_w/2);
    draw_set_color(c_white);
    draw_rectangle(box_x, txt_y-(txt_back_h), box_x-txt_back_w, txt_y+(txt_back_h), 0);
    draw_set_colour(c_black);
    draw_rectangle(box_x, txt_y-(txt_back_h), box_x-txt_back_w, txt_y+(txt_back_h), 1);
    draw_text_ext(card_x + 150, txt_y, pos_option, -1, optionWidth);
}
