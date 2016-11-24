///scr_pruneDeck(Array to prune, Critera1 to remove, Type to remove 1=tag 2=set)


//set default values
var search = 1;
var match = 'default';
var type = 1;
var temp = 0;
var stat_count = 4;
var arraylength = 4;
arr_return[0, 0] = 0;

search = argument[0];
match = argument[1];
type = argument[2];
arraylength = array_height_2d(search);

var q;

    for (q = 0; q < array_height_2d(search); q++)
    {
        if match != search[q, type]
        {
            var i;
            for (i = 0; i < stat_count; i++)
            {
                arr_return[temp, i] = search[q, i]
            }
            temp += 1; 
        }
    } 
return (arr_return);
