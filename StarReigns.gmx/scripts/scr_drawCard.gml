///scr_drawCard

var card_x = room_width/2;
var card_y = room_height/2 - 160;
var optionWidth = 120

//Draw sprite
sprite_index = spr_basicCard;
draw_self();


//Draw test properties
draw_set_colour(c_black);
draw_set_font(fnt_basic);
draw_text(card_x, 60, "set = " + cardset);
//draw_text(x, y + 70, cardstring);
draw_text(card_x, 80, "tags = " + tags);
draw_text_ext(card_x - 150, card_y - 30, neg_option, -1, optionWidth);
draw_text_ext(card_x + 150, card_y - 30, pos_option, -1, optionWidth);
draw_sprite_ext(spr_arrow, image_index, card_x - 150, card_y - 70, 1, 1, 0, -1, 0.5);
draw_sprite_ext(spr_arrow, image_index, card_x + 150, card_y - 70, 1, 1, 180, -1, 0.5);

//Draw card string 
//draw_text_ext(card_x, card_y + 150, cardstring, -1, 400);
