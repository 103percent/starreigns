///scr_bulkDeck(target deck, criteria to add, criteria type 1=tag 2=set 3=objectname, retuns array)

var target = argument0;
var criteria = argument1;
var type = argument2;
var arr_decklist = scr_buildDeck();
var present = false;
var stat_count = 4;
var q;
var p;
var s;

for (q = 0; q < array_height_2d(arr_decklist); q++)
{
    var target_length = array_height_2d(target);
    
    if arr_decklist[q, type] == criteria
    {
        for (p = 0; p < target_length; p++)
        {
            if target[p, 3] == arr_decklist[q, 3]
            {
                present = true;
            }
        }
        if !present
        {
          for (s = 0; s < stat_count; s++)
          {
            target[target_length, p] = arr_decklist[q, p]
          } 
        }
    }
}


return(target); 
