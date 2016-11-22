///scr_buildDeck

//grab all base cards
var i = 0;
ds_cardlist = ds_list_create();
while (i < 1000)
{
    if !object_exists(i) break;
    if object_is_ancestor(i, obj_basicCard) ds_list_add(ds_cardlist, i);
    i++;
}

//build array from cards
arr_deck[0, 0] = 0;
for (q = 0; q < (ds_list_size(ds_cardlist)); q++)
{
    arr_deck[q, 0] = scr_getWeight(ds_list_find_value(ds_cardlist, q));
    arr_deck[q, 1] = ds_list_find_value(ds_cardlist, q);
}

//build ds_list from cards
ds_deck = ds_list_create();
for (q = 0; q < (ds_list_size(ds_cardlist)); q++)
{
 ds_list_add(ds_deck, (ds_list_find_value(ds_cardlist, q)))
}

//Set deck size
cardcount = (ds_list_size(ds_deck) -1);
arr_cardcount = (array_height_2d(arr_deck) - 1);


