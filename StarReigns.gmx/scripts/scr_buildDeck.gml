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
    arr_deck[q, 0] = scr_getStat(ds_list_find_value(ds_cardlist, q), 0);
    arr_deck[q, 1] = scr_getStat(ds_list_find_value(ds_cardlist, q), 1);
    arr_deck[q, 2] = scr_getStat(ds_list_find_value(ds_cardlist, q), 2);
    arr_deck[q, 3] = ds_list_find_value(ds_cardlist, q);
}

arr_q_deck = scr_fetchCard('Testy4', arr_deck, 1);
show_debug_message(string(array_height_2d(arr_q_deck)) + "  " + string(array_length_2d(arr_q_deck, 0)));

cardcount = (array_height_2d(arr_deck) - 1);

