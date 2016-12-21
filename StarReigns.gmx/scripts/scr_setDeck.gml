///scr_setDeck(Returns deck array) 

// This code cycles through a ds_list of card set names 
// matching against the entire array of possible cards.
// This could easily be re-purposed check against any values by changing the 'type' 
// 0 = weight, 1 = tag, 2 = set, 3 = object name
// It would also be nessicary to change where the list is loaded from.

//check savefile for existing list. If none, add default
var setlist_ds = ds_list_create();
var str; 
ini_open("savegame.ini");
if ini_section_exists("setlist")
    {
      str = ini_read_string("setlist", "0", 'Planet001');
      ds_list_read(setlist_ds, str);
    }
    else
    {
        ds_list_add(setlist_ds, 'Planet001');
    }
ini_close();

//loop through list and add cards 
var mydeck = scr_buildDeck(); 
var type = 2; 
var setcount = ds_list_size(setlist_ds); 
var temp = 0;
var stat_count = array_length_2d(mydeck, 0); 
arr_return_deck[0, 0] = 0;

var q;
    for (q = 0; q < array_height_2d(mydeck); q++)
    {
        var p
        for (p = 0; p < setcount; p++)
        {
            if mydeck[q, type] == setlist_ds[| p]
            {
                var i;
                for (i = 0; i < stat_count; i++)
                {
                    arr_return_deck[temp, i] = mydeck[q, i]
                }
                temp += 1; 
            }
        } 
    } 
ds_list_destroy(setlist_ds);
return (arr_return_deck);
