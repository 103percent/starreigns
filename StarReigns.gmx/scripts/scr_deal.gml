/// scr_deal()


// Basic Array Method

rand = irandom_range(0, cardcount);
topcard = arr_deck[rand, 3];
cardweight = arr_deck[rand, 0];
cardtag = arr_deck[rand, 1];
cardset = arr_deck[rand, 2];
dealtcard = instance_create(room_width/2, room_height/2 - 160, topcard)
with dealtcard
    {
        tags = obj_dealer.cardtag;
        cardset = obj_dealer.cardset;
    }

//Ensure dealt
global.dealt = true;
