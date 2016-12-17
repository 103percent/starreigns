///scr_getStat(obj_index, stat_index, retuns given stat 0 = weight, 1 = tag, 2 = set)

var cardindex = argument0;
var stat_index = argument1;
var stat = 0;
var weight = 10;
var tag = 'default tag';
var set = 'default set';

switch (cardindex)
{
 case obj_marriedCard:      weight = 0; tag = 'Base'; set = 'The Other Half'; break;
 case obj_angryCard:        weight = 0; tag = 'Base'; set = 'Beast Mode'; break;
 case obj_angryredCard:     weight = 0; tag = 'Red'; set = 'Beast Mode'; break;
 case obj_angryblueCard:    weight = 0; tag = 'Blue'; set = 'Beast Mode'; break;
 case obj_angrygreenCard:   weight = 0; tag = 'Green'; set = 'Beast Mode'; break;
 case obj_surpriseCard:      weight = 0; tag = 'Testy4'; set = 'The Fear'; break;
 case obj_surpriseredCard:   weight = 0; tag = 'Red'; set = 'The Fear'; break;
 case obj_surpriseblueCard:  weight = 0; tag = 'Blue'; set = 'The Fear'; break;
 case obj_surprisegreenCard: weight = 0; tag = 'Green'; set = 'The Fear'; break;
 case obj_cookedCard:       weight = 0; tag = 'Testy3'; set = 'Finger Licking Good'; break;
 case obj_setWeightTest:    weight = -3000; tag = 'Merchant'; set = 'Test Success'; break;
 case obj_p001_mechanic:    weight =100;  tag = 'Merchant'; set = 'Planet001'; break;
 case obj_p001_trader:      weight = 250; tag = 'Merchant'; set = 'Planet001'; break;
 case obj_p001_crewunion:   weight = 100; tag = 'Crew'; set = 'Planet001'; break;
 case obj_p001_HAL:         weight =100; tag = 'CPU'; set = 'Planet001'; break;
 case obj_p001_rumour:      weight =100; tag = 'Dweller'; set = 'Planet001'; break;
 case obj_p001_engineer:    weight =100; tag = 'Crew'; set = 'Planet001'; break;
 case obj_p001_bribe:       weight =100; tag = 'Dweller'; set = 'Planet001'; break;
 case obj_p001_alien:       weight =100; tag = 'Dweller'; set = 'Planet001'; break;
 case obj_p001_facilities:  weight=  100; tag = 'Crew'; set = 'Planet001'; break;
 case obj_p001_restructure: weight =100; tag = 'CPU'; set = 'Planet001'; break;
 case obj_p001_blastoff: weight =-16100; tag = 'Blastoff'; set = 'Planet001'; break;
 
}

switch(stat_index)
{
 case 0: stat = weight; break;
 case 1: stat = tag; break;
 case 2: stat = set; break;
} 

return(stat); 
