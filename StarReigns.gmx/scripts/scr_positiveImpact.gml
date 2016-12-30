/// scr_positiveImpact()

//Apply impact to core values
global.core0 += arr_positive[0];
global.core1 += arr_positive[1];
global.core2 += arr_positive[2];
global.core3 += arr_positive[3];

//Visual aid
scr_cardSwipeAnim(1);
//Check deck effect
if trigger_prune_pos
{
    obj_dealer.arr_deck = scr_pruneDeck(obj_dealer.arr_deck, pos_prune_cr1, pos_prune_tp1);
}

if set_weight_pos
{
    obj_dealer.arr_deck = scr_setWeights(obj_dealer.arr_deck, weight_pos_tp, weight_pos_cr, weight_pos_val)
}
if set_weight_pos2
{
    obj_dealer.arr_deck = scr_setWeights(obj_dealer.arr_deck, weight_pos2_tp, weight_pos2_cr, weight_pos2_val)
}
if add_weight_pos
{
    obj_dealer.arr_deck = scr_addWeights(obj_dealer.arr_deck, weight_posadd_tp, weight_posadd_cr, weight_posadd_val)
}

// save results, Destroyself and trigger dealer
global.dealt = false;
instance_destroy();   

