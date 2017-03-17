///scr_divWeight(deck array object,  object name, returns modified deck)
var deck = argument0;
var value = argument1;
var weight;


var q;
for (q = 0; q < (array_height_2d(deck)); q++)
{
    if (deck[q,3] == value) 
    { 
        show_debug_message("I've found this card!!  " + string(deck[q,3]));
        show_debug_message("Card Name:  " + string(deck[q,4]));
        show_debug_message("Old Weight:  " + string(deck[q,0]));
        weight = deck[q,0];
        deck[q,0] = weight/4; 
        show_debug_message("New Weight:  " + string(deck[q,0])); 
    }
    
}

return(deck); 
