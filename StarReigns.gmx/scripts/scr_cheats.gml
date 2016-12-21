///scr_cheats


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
/*
if (keyboard_check_pressed(ord("U")))
{
    var crit = 'The Fear'
    arr_deck = scr_pruneDeck(arr_deck, crit, 2);
    show_debug_message('Removing cards matching = ' + crit);
}
*/
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
if (keyboard_check_pressed(ord("P")))
{
    show_debug_message("Printing SetList of Current Deck")
    var q
    for (q = 0; q < array_height_2d(arr_deck); q++)
    {
        show_debug_message(arr_deck[q, 2])
    }
}
// 'N' resets the game
if (keyboard_check_pressed(ord("N")))
{
    game_restart();
}
// Writes a setlist to a save file, in this case 'Beast Mode'.
if (keyboard_check_pressed(ord("L")))
{
    var l = 'Beast Mode'
    scr_saveSetList(l);
    show_debug_message('Saving setlist ' + l);
}

// 'Space' deletes the save section for core values and setlist. Restart game for fresh save. 
if (keyboard_check_pressed(vk_space))
{
 scr_wipesave();
}

