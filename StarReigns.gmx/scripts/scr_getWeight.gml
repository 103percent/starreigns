///scr_getWeight(obj_index, returns weight of card)

cardindex = argument0;
weight = 0;

switch (cardindex)
{
 case obj_marriedCard: weight = 50; break;
 case obj_angryCard: weight = 50; break;
 case obj_supriseCard: weight = 20; break;
}

return(weight); 
