/// scr_deal(arr_deck)

deck = argument0;
weights[0] = 0;
totalweight = 0;

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
rand_index = random_range(0, 1);
rand = 0
sum = 0;
for (q = 0; q < (array_height_2d(deck)); q++)
{
    sum = sum + weights[q];
    rand = q;
    if(sum > rand_index){break};
}
//show_debug_message(string(deck[0,]));
show_debug_message(string(rand_index));
show_debug_message("Next Test!");

topcard = deck[rand, 3];
cardweight = deck[rand, 0];
cardtag = deck[rand, 1];
cardset = deck[rand, 2];
dealtcard = instance_create(room_width/2, room_height/2 - 160, topcard)
with dealtcard
    {
        tags = obj_dealer.cardtag;
        cardset = obj_dealer.cardset;
    }

/* Basic Array Method

rand = irandom_range(0, cardcount);
topcard = deck[rand, 3];
cardweight = deck[rand, 0];
cardtag = deck[rand, 1];
cardset = deck[rand, 2];
dealtcard = instance_create(room_width/2, room_height/2 - 160, topcard)
with dealtcard
    {
        tags = obj_dealer.cardtag;
        cardset = obj_dealer.cardset;
    }
*/

//Ensure dealt
global.dealt = true;
