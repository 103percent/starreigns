///scr_setWeights(<deck array object>,  <property type>, <property value>, <new weight>)
// returns modified deck.
var deck = argument0;
var type = argument1;
var value = argument2;
var weight = argument3;

var q;
for (q = 0; q < (array_height_2d(deck)); q++)
{
    if (deck[q,type] = value) { deck[q,0] = weight }; 
}

return(deck); 
