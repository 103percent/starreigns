///scr_getStat(obj_index, stat_index, retuns given stat 0 = weight, 1 = tag, 2 = set)

var cardindex = argument0;
var stat_index = argument1;
var stat = 0;
var weight = 10;
var tag = 'default tag';
var set = 'default set';

switch (cardindex)
{
 case obj_dan:              weight = 0; tag = 'Tutorial'; set = 'Tutorial'; break;
 case obj_jak:              weight = 15; tag = 'Tutorial'; set = 'Tutorial'; break;
 case obj_marriedCard:      weight = 0; tag = 'Base'; set = 'The Other Half'; break;
 case obj_angryCard:        weight = 0; tag = 'Base'; set = 'Beast Mode'; break;
 case obj_angryredCard:     weight = 0; tag = 'Red'; set = 'Red_One'; break;
 case obj_angryblueCard:    weight = 0; tag = 'Blue'; set = 'Blue_One'; break;
 case obj_angrygreenCard:   weight = 0; tag = 'Green'; set = 'Beast Mode'; break;
 case obj_surpriseCard:      weight = 0; tag = 'Testy4'; set = 'The Fear'; break;
 case obj_surpriseredCard:   weight = 0; tag = 'Red'; set = 'Red_One'; break;
 case obj_surpriseblueCard:  weight = 0; tag = 'Blue'; set = 'Blue_One'; break;
 case obj_surprisegreenCard: weight = 0; tag = 'Green'; set = 'The Fear'; break;
 case obj_cookedCard:       weight = 0; tag = 'Testy3'; set = 'Finger Licking Good'; break;
 case obj_setWeightTest:    weight = -3000; tag = 'Merchant'; set = 'Test Success'; break;
 case obj_p001_mechanic:    weight =100;  tag = 'Merchant'; set = 'Planet001'; break;
 case obj_p001_trader:      weight = 250; tag = 'Merchant'; set = 'Planet001'; break;
 case obj_p001_crewunion:   weight = 100; tag = 'Crew'; set = 'Planet001'; break;
 case obj_p001_HAL:         weight =100; tag = 'CPU'; set = 'Planet001'; break;
 case obj_p001_rumour:      weight =100; tag = 'Dweller'; set = 'Planet001'; break;
 case obj_p001_engineer:    weight =100; tag = 'Crew'; set = 'Planet001'; break;
 case obj_p001_bribe:       weight =100; tag = 'Authorities'; set = 'Planet001'; break;
 case obj_p001_shakedown:       weight =0; tag = 'Authorities'; set = 'Planet001'; break;
 case obj_p001_alien:       weight =100; tag = 'Dweller'; set = 'Planet001'; break;
 case obj_p001_facilities:  weight=  100; tag = 'Crew'; set = 'Planet001'; break;
 case obj_p001_restructure: weight =100; tag = 'CPU'; set = 'Planet001'; break;
 case obj_p001_blastoff: weight =-16100; tag = 'Blastoff'; set = 'Planet001'; break;
 case obj_spacebasic_wreckage:   weight =0;      tag = 'Discovery'   ; set = 'SpaceBasicSide'; break;
 case obj_spacebasic_asteroid:   weight =100;    tag = 'Mechanic'    ; set = 'SpaceBasic'; break;
 case obj_spacebasic_police:     weight =100;    tag = 'Authorities' ; set = 'SpaceBasic'; break;
 case obj_spacebasic_crewbrawl:  weight =100;    tag = 'Crew'        ; set = 'SpaceBasic'; break;
 case obj_spacebasic_pirates:    weight =100;    tag = 'Pirates'     ; set = 'SpaceBasic'; break;
 case obj_spacebasic_spaceeye:   weight =100;    tag = 'Eyebeast'    ; set = 'SpaceBasic'; break;
 case obj_spacebasic_virus:      weight =100;    tag = 'HAL'         ; set = 'SpaceBasic'; break;
 case obj_spacebasic_jacoopsie:       weight =0; tag = 'Mechanic'; set = 'SpaceBasic'; break;
 case obj_spacebasic_datadealer: weight =100;    tag = 'Trader'      ; set = 'SpaceBasic'; break;
 case obj_spacebasic_fire:       weight =100;    tag = 'Mechanic'    ; set = 'SpaceBasic'; break;
 case obj_spacebasic_distress:   weight =100;    tag = 'Distress'    ; set = 'SpaceBasic'; break;
 case obj_spacebasic_landing:    weight =-12600; tag = 'Landing'     ; set = 'SpaceBasic'; break;
 case obj_p002_mechanic:       weight =100; tag = 'Mechanic'    ; set = 'Planet002'; break;
 case obj_p002_mayor:          weight =100; tag = 'Authorities' ; set = 'Planet002'; break;
 case obj_p002_vagrant:        weight =100; tag = 'Dweller'     ; set = 'Planet002'; break;
 case obj_p002_shootout:       weight =100; tag = 'Event'       ; set = 'Planet002'; break;
 case obj_p002_infected:       weight =100; tag = 'Crew'        ; set = 'Planet002'; break;
 case obj_p002_speechclass:    weight =100; tag = 'Dweller'     ; set = 'Planet002'; break;
 case obj_p002_beasttransport: weight =100; tag = 'Dweller'     ; set = 'Planet002'; break;
  case obj_p002_wolfchicken: weight =0; tag = 'Crew'     ; set = 'Planet002'; break;
 case obj_p002_trader:         weight =100; tag = 'Merchant'    ; set = 'Planet002'; break;
 case obj_p002_refugee:        weight =100; tag = 'Dweller'     ; set = 'Planet002'; break;
 case obj_p002_scrapyard:      weight =100; tag = 'Location'    ; set = 'Planet002'; break;
 case obj_p002_cat:            weight =100; tag = 'Pet'         ; set = 'Planet002'; break;
 //case obj_p002_newrecruits:    weight =100; tag = 'Crew'        ; set = 'Planet002'; break;
 case obj_p002_blastoff: weight =-12600; tag = 'Blastoff'; set = 'Planet002'; break;
}

switch(stat_index)
{
 case 0: stat = weight; break;
 case 1: stat = tag; break;
 case 2: stat = set; break;
} 

return(stat); 
