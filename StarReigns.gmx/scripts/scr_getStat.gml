///scr_getStat(obj_index, stat_index, retuns given stat 0 = weight, 1 = tag, 2 = set)

cardindex = argument0;
stat_index = argument1;
stat = 0;
weight = 10;
tag = 'default tag';
set = 'default set';

switch (cardindex)
{
 case obj_marriedCard:  weight = 50; tag = 'TEst1'; set = 'The Other Half'; break;
 case obj_angryCard:    weight = 50; tag = 'Test2'; set = 'Beast Mode' break;
 case obj_supriseCard:  weight = 50; tag = 'Test3'; set = 'The Feat' break;
 case obj_basicCard:    weight = 20; tag = 'Test4'; set = 'BasicBitch' break;
}

switch(stat_index)
{
 case 0: stat = weight; break;
 case 1: stat = tag; break;
 case 3: stat = set; break;
} 

return(stat); 
