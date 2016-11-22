///scr_fetchCard(critera, 2dArray,  type 1=tag 2=set, returns 2d array)

match = argument0;
search = argument1;
type = argument2;
arr_return[0, 0] = 0;
temp = 0;

var q;
for (q = 0; q < array_height_2d(search); q++)
 {
        if match == search[q, type]
        {
            var i;
            for (i = 0; i < 4; i++)
            {
                arr_return[temp, i] = search[q, i]
            }
            temp += 1; 
        } 
 }

return (arr_return);
