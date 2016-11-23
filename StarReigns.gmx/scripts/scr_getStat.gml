///scr_getStat(obj_index, stat_index, retuns given stat 0 = weight, 1 = tag, 2 = set)

cardindex = argument0;
stat_index = argument1;
stat = 0;
weight = 10;
tag = 'default tag';
set = 'default set';

switch (cardindex)
{
 case obj_marriedCard:      weight = 1; tag = 'Testy1'; set = 'The Other Half'; break;
 case obj_angryCard:        weight = 1; tag = 'Testy2'; set = 'Beast Mode'; break;
 case obj_angryredCard:     weight = 1; tag = 'Red'; set = 'Beast Mode'; break;
 case obj_angryblueCard:    weight = 1; tag = 'Blue'; set = 'Beast Mode'; break;
 case obj_angrygreenCard:   weight = 1; tag = 'Green'; set = 'Beast Mode'; break;
 case obj_supriseCard:      weight = 1; tag = 'Testy4'; set = 'The Fear'; break;
 case obj_supriseredCard:   weight = 50; tag = 'Red'; set = 'The Fear'; break;
 case obj_supriseblueCard:  weight = 50; tag = 'Blue'; set = 'The Fear'; break;
 case obj_suprisegreenCard: weight = 50; tag = 'Green'; set = 'The Fear'; break;
 case obj_cookedCard:       weight = 1; tag = 'Testy3'; set = 'Finger Licking Good'; break;
}

switch(stat_index)
{
 case 0: stat = weight; break;
 case 1: stat = tag; break;
 case 2: stat = set; break;
} 

return(stat); 
