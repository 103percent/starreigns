/// scr_deal(arr_deck)

var deck = argument0;
var weights;
weights[0] = 0;
var totalweight = 0;
var card_x = room_width/2;
var card_y = room_height*0.44;

// Random Weights Method
var q;
for (q = 0; q < (array_height_2d(deck)); q++)
{
    if(deck[q,0]>=0){
    weights[q] = deck[q, 0];  
    totalweight = totalweight + deck[q, 0];
    } 
}
for (q = 0; q < (array_length_1d(weights)); q++)
{
    weights[q] = weights[q]/totalweight; 
}
var rand_index = random_range(0, 1);
var rand = 0
var sum = 0;
for (q = 0; q < (array_height_2d(deck)); q++)
{
    if(deck[q,0]>=0){
    sum = sum + weights[q];
    rand = q;
    }
    if(sum > rand_index){break};
    
}

var topcard = deck[rand, 3];
var cardweight = deck[rand, 0];
var newtag = deck[rand, 1];
var newset = deck[rand, 2];
dealtcard = instance_create(card_x, card_y, topcard)
with dealtcard
    {
        tags = newtag;
        cardset = newset;
    }
    
//Ensure dealt
global.dealt = true;
