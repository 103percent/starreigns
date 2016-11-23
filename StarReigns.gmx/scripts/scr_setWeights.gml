// scr_setWeights(<deck array object>,  <property type>, <property value>, <new weight>)
// returns modified deck.
deck = argument0;
type = argument1;
value = argument2;
weight = argument3;

var q;
for (q = 0; q < (array_height_2d(deck)); q++)
{
    if (deck[q,type] = value) { deck[q,1] = weight }; 
}
