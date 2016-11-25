///scr_getStat(obj_index, stat_index, retuns given stat 0 = weight, 1 = tag, 2 = set)

var cardindex = argument0;
var stat_index = argument1;
var stat = 0;
var weight = 10;
var tag = 'default tag';
var set = 'default set';

switch (cardindex)
{
 case obj_marriedCard:      weight = 1; tag = 'Base'; set = 'The Other Half'; break;
 case obj_angryCard:        weight = 1; tag = 'Base'; set = 'Beast Mode'; break;
 case obj_angryredCard:     weight = 10; tag = 'Red'; set = 'Beast Mode'; break;
 case obj_angryblueCard:    weight = 1; tag = 'Blue'; set = 'Beast Mode'; break;
 case obj_angrygreenCard:   weight = 1; tag = 'Green'; set = 'Beast Mode'; break;
 case obj_surpriseCard:      weight = 1; tag = 'Testy4'; set = 'The Fear'; break;
 case obj_surpriseredCard:   weight = 50; tag = 'Red'; set = 'The Fear'; break;
 case obj_surpriseblueCard:  weight = 50; tag = 'Blue'; set = 'The Fear'; break;
 case obj_surprisegreenCard: weight = 50; tag = 'Green'; set = 'The Fear'; break;
 case obj_cookedCard:       weight = 1; tag = 'Testy3'; set = 'Finger Licking Good'; break;
 case obj_setWeightTest:    weight = -3000; tag = 'FunctionTest'; set = 'Test Success'; break;
}

switch(stat_index)
{
 case 0: stat = weight; break;
 case 1: stat = tag; break;
 case 2: stat = set; break;
} 

return(stat); 
