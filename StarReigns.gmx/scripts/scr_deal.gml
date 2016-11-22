/// scr_deal()

//Pick top card
rand = round(random_range(0, cardcount));
topcard = arr_deck[rand];

//Deal top card
instance_create(room_width/2, room_height/2 - 160, topcard)

//Ensure dealt
global.dealt = true;

//Shuffle
/*
Call scr_buildDeck again?
*/
