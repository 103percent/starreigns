///scr_drawCard

//Draw sprite
draw_self();


//Draw test properties
draw_set_colour(c_blue);
draw_set_font(fnt_basic);
draw_text(x, y - 70, "set = " + cardset);
draw_text(x, y + 70, cardstring);
draw_text(x, y + 100, "tags = " + tags);
draw_text(x - 150, y, neg_option);
draw_text(x + 150, y, pos_option);
draw_sprite_ext(spr_arrow, image_index, x - 150, y - 50, 1, 1, 0, -1, 0.5);
draw_sprite_ext(spr_arrow, image_index, x + 150, y - 50, 1, 1, 180, -1, 0.5);
