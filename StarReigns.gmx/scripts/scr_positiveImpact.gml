/// scr_positiveImpact()

//Apply impact to core values
global.core0 += arr_positive[0];
global.core1 += arr_positive[1];
global.core2 += arr_positive[2];
global.core3 += arr_positive[3];

//Visual aid
shot = instance_create(x, y, obj_shot)
  with shot
    {
     hspeed = +10
    }
// save results, Destroyself and trigger dealer
if trigger_prune_pos
{
    obj_dealer.arr_deck = scr_pruneDeck(obj_dealer.arr_deck, pos_prune_cr1, pos_prune_tp1);
}


global.dealt = false;
scr_savegame();
instance_destroy();   

