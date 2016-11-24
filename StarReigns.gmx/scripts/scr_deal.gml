/// scr_deal(arr_deck)

var deck = argument0;
var weights;
weights[0] = 0;
var totalweight = 0;

// Random Weights Method
var q;
for (q = 0; q < (array_height_2d(deck)); q++)
{
    weights[q] = deck[q, 0];  
    totalweight = totalweight + deck[q, 0]; 
}
for (q = 0; q < (array_height_2d(deck)); q++)
{
    weights[q] = weights[q]/totalweight; 
}
var rand_index = random_range(0, 1);
var rand = 0
var sum = 0;
for (q = 0; q < (array_height_2d(deck)); q++)
{
    sum = sum + weights[q];
    rand = q;
    if(sum > rand_index){break};
}
//show_debug_message(string(deck[0,]));
show_debug_message(string(rand_index));
show_debug_message("Next Test!");

var topcard = deck[rand, 3];
var cardweight = deck[rand, 0];
var cardtag = deck[rand, 1];
var cardset = deck[rand, 2];
dealtcard = instance_create(room_width/2, room_height/2 - 160, topcard)
with dealtcard
    {
        tags = cardtag;
        cardset = cardset;
    }

//Ensure dealt
global.dealt = true;
