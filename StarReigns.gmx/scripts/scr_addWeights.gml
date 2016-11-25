///scr_addWeights(<deck array object>,  <property type>, <property value>, <weight to add>)
// returns modified deck.
var deck = argument0;
var type = argument1;
var value = argument2;
var weight = argument3;


var q;
for (q = 0; q < (array_height_2d(deck)); q++)
{
    if (deck[q,type] == value) { deck[q,0] = deck[q,0] + weight }; 
    show_debug_message(string(deck[q,0]));
}

return(deck); 
