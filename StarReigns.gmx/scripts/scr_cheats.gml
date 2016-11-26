///scr_cheats

scr_killsave();

if (keyboard_check_pressed(ord("A")))
{
    arr_deck = scr_addWeights(arr_deck, 4, "obj_setWeightTest", 1000 );
    show_debug_message("A Pressed!")
}
if (keyboard_check_pressed(ord("B")))
{
    var crit = 'Red';
    arr_deck = scr_bulkDeck(arr_deck, 'Red', 1)
    show_debug_message('Adding cards matching = ' + crit);
    scr_setWeights(arr_deck, 0, obj_setWeightTest, 1000);
    show_debug_message(string(scr_getStat(ds_list_find_value(arr_deck, 11),1)))
}
if (keyboard_check_pressed(ord("M")))
{
 arr_deck = scr_multWeights(arr_deck, 4, "obj_setWeightTest", -1 );
 show_debug_message("M Pressed!")
}
if (keyboard_check_pressed(ord("P")))
{
    var crit = 'The Fear'
    arr_deck = scr_pruneDeck(arr_deck, crit, 2);
    show_debug_message('Removing cards matching = ' + crit);
}
if (keyboard_check_pressed(ord("R")))
{
    arr_deck = scr_buildDeck();
    show_debug_message('Rebuilding Deck');
}
if (keyboard_check_pressed(ord("T")))
{
    arr_deck = scr_setWeights(arr_deck, 4, "obj_setWeightTest", 1000 );
    show_debug_message("T Pressed!")
}

