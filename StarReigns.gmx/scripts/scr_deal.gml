/// scr_deal()

//Pick top card

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
//Ensure dealt
global.dealt = true;

//Shuffle
/*
Call scr_buildDeck again?
*/
