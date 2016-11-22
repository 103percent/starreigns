///scr_buildDeck

//grab all cards
var i = 0;
ds_cardlist = ds_list_create();
while (i < 1000)
{
    if !object_exists(i) break;
    if object_is_ancestor(i, obj_basicCard) ds_list_add(ds_cardlist, i);
    i++;
}

//build deck from cards
ds_deck = ds_list_create();
for (q = 0; q < (ds_list_size(ds_cardlist)); q++)
{
 ds_list_add(ds_deck, (ds_list_find_value(ds_cardlist, q)))
}

//Set deck size
cardcount = (ds_list_size(ds_deck) -1);


//cardcount = (array_length_1d(arr_deck) - 1);

