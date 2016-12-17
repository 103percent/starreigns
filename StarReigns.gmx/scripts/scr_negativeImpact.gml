/// scr_negativeImpact()


//Apply impact to core values
global.core0 -= arr_negative[0];
global.core1 -= arr_negative[1];
global.core2 -= arr_negative[2];
global.core3 -= arr_negative[3];

//Visual aid
scr_cardSwipeAnim(-1);
//Check deck effect
if trigger_prune_neg
{
     obj_dealer.arr_deck = scr_pruneDeck(obj_dealer.arr_deck, neg_prune_cr1, neg_prune_tp1);
}
if set_weight_neg
{
    obj_dealer.arr_deck = scr_setWeights(obj_dealer.arr_deck, weight_neg_tp, weight_neg_cr, weight_neg_val)
}
if add_weight_neg
{
    obj_dealer.arr_deck = scr_addWeights(obj_dealer.arr_deck, weight_negadd_tp, weight_negadd_cr, weight_negadd_val)
}
    
    
// save results, Destroyself and trigger dealer

global.dealt = false;
scr_savegame();
instance_destroy();   
