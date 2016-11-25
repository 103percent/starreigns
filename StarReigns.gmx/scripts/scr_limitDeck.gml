///scr_limitDeck(Array to treat, Criteria1 to limit to, Type1, Criteria2, etc... type 1=tag 2=set)
//Limits deck to only those cards which match criteria

//set default values
var search = 1;
var match = 'default';
var type = 1;
var temp = 0;
var stat_count = 4;
var arraylength = 4;
arr_return[0, 0] = 0;


//default for extra args
var match2 = 'default';
var type2 = 1;
var match3 = 'default';
var type3 = 1;
var twosets = false;
var threesets = false;


//parse the various arguments

if argument_count = 3
{
search = argument[0];
match = argument[1];
type = argument[2];
arraylength = array_height_2d(search);
}
else if argument_count = 5
{
search = argument[0];
match = argument[1];
type = argument[2];
arraylenght = array_height_2d(search);
match2 = argument[3];
type2 = argument[4];
twosets = true;
}
else if argument_count = 7
{
search = argument[0];
match = argument[1];
type = argument[2];
arraylenght = array_height_2d(search);
match2 = argument[3];
type2 = argument[4];
twosets = true;
match3 = argument[5];
type3 = argument[6];
threesets = true;
}

//if we're only matching one criteria

if !twosets
{
    var q;
    for (q = 0; q < array_height_2d(search); q++)
    {
        if match == search[q, type]
        {
            var i;
            for (i = 0; i < stat_count; i++)
            {
                arr_return[temp, i] = search[q, i]
            }
            temp += 1; 
        }
    } 
}

//if we're matching two criteria

else if twosets && !threesets
{
    var q;
    for (q = 0; q < array_height_2d(search); q++)
    {
        if (match == search[q, type] || match2 == search[q, type2])
        {
            var i;
            for (i = 0; i < 4; i++)
            {
                arr_return[temp, i] = search[q, i]
            }
            temp += 1; 
        }
    }  
}

//if we're matching three criteria
else if threesets
{
     var q;
    for (q = 0; q < array_height_2d(search); q++)
    {
        if (match == search[q, type]) || (match2 == search[q, type2]) || (match3 == search[q, type3])
        {
            var i;
            for (i = 0; i < 4; i++)
            {
                arr_return[temp, i] = search[q, i]
            }
            temp += 1; 
        }
    } 
}

return (arr_return);
