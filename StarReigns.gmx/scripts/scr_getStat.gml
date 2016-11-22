#define scr_getStat
///scr_getStat(obj_index, stat_index, retuns given stat 0 = weight, 1 = tag, 2 = set)

cardindex = argument0;
stat_index = argument1;
stat = 0;

switch(stat_index)
{
 case 0: stat = scr_getWeight(cardindex); break;
 case 1: stat = scr_getTag(cardindex); break;
 case 3: stat = scr_getSet(cardindex); break;
}

return(stat); 

#define scr_getWeight
///scr_getWeight(obj_index, returns weight of card)

cardindex = argument0;
weight = 0;

switch (cardindex)
{
 case obj_marriedCard: weight = 50; break;
 case obj_angryCard: weight = 50; break;
 case obj_supriseCard: weight = 20; break;
 case obj_basicCard: weight = 10; break;
}

return(weight); 

#define scr_getTag
///scr_getTag(obj_index, returns tag)

cardindex = argument0;
tag = 'default';

switch (cardindex)
{
 case obj_marriedCard: tag = 'TEst1'; break;
 case obj_angryCard: tag = 'Test2'; break;
 case obj_supriseCard: tag = 'Test3'; break;
 case obj_basicCard: tag = 'Test4'; break;
}

return(tag); 

#define scr_getSet
///scr_getSet (obj_index, returns card set)

cardindex = argument0;
set = 'default';

switch (cardindex)
{
 case obj_marriedCard: set = 'married'; break;
 case obj_angryCard: set = 'angry'; break;
 case obj_supriseCard: set = 'suprise'; break;
 case obj_basicCard: set = 'basic'; break;
}

return(set); 
