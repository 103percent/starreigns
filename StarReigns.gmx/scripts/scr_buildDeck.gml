///scr_buildDeck (returns built array)

//grab all base cards
var i = 0;
var ds_cardlist = ds_list_create();
while (i < 1000)
{
    if !object_exists(i) break;
    if object_is_ancestor(i, obj_basicCard) ds_list_add(ds_cardlist, i);
    i++;
}

//build array from cards
var arr_built;
arr_built[0, 0] = 0;
for (q = 0; q < (ds_list_size(ds_cardlist)); q++)
{
    arr_built[q, 0] = scr_getStat(ds_list_find_value(ds_cardlist, q), 0); // weight
    arr_built[q, 1] = scr_getStat(ds_list_find_value(ds_cardlist, q), 1); // tag
    arr_built[q, 2] = scr_getStat(ds_list_find_value(ds_cardlist, q), 2); // set
    arr_built[q, 3] = ds_list_find_value(ds_cardlist, q);                 // object
    arr_built[q, 4] = object_get_name(ds_list_find_value(ds_cardlist, q));
    show_debug_message(arr_built[q,4]);
}

return(arr_built)
