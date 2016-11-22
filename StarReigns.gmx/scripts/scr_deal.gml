/// scr_deal()


// Basic Array Method

rand = irandom_range(0, arr_cardcount);
topcard = arr_deck[rand, 3];
topcardweight = arr_deck[rand, 0];
cardtag = arr_deck[rand, 1];
cardset = arr_deck[rand, 2];
dealtcard = instance_create(room_width/2, room_height/2 - 160, topcard)
with dealtcard
    {
        tags = obj_dealer.cardtag;
        cardset = obj_dealer.cardset;
    }


//DS_List Method (empties hand)
/*
if !ds_list_empty(ds_deck)
{
    ds_list_shuffle(ds_deck);
    topcard = ds_list_find_value(ds_deck, 0);
    ds_list_delete(ds_deck, 0);

    //Deal top card
    instance_create(room_width/2, room_height/2 - 160, topcard)
}
else
{
    decked = true;
}
*/


//Ensure dealt
global.dealt = true;
