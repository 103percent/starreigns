/// scr_initCard

//set swipe variables for input and display
swiping = false;
dwn_x = 0;
up_x = 0;
show_pos = false;
show_neg = false;
//set defaults for prune triggers
trigger_prune_pos= false;
trigger_prune_neg= false;
pos_prune_cr1 = 'Testy1';  //first positive prune criteria to check
pos_prune_tp1 = 1;         //first positive prune criteria type
neg_prune_cr1 = 'Testy1';  //first negative prune criteria to check
neg_prune_tp1 = 1;         //first negative prune criteria type

//set default properties
cardset = "basic";
cardstring = "Placeholder Card Text Here";
tags = "basic";

//set default Yes/No
pos_option = 'Yes Please'
neg_option = 'Go fuck yourself'

//Default positive choice weight impact
set_weight_pos = false;
weight_pos_tp = 1;
weight_pos_cr = 'Testy1';
weight_pos_val = 10;

set_weight_pos2 = false;
weight_pos2_tp = 1;
weight_pos2_cr = 'Testy1';
weight_pos2_val = 10;

//Default negative choice weight impact to match positive
set_weight_neg = set_weight_pos
weight_neg_tp = weight_pos_tp
weight_neg_cr = weight_pos_cr
weight_neg_val = weight_pos_val

set_weight_neg2 = set_weight_pos2
weight_neg2_tp = weight_pos2_tp
weight_neg2_cr = weight_pos2_cr
weight_neg2_val = weight_pos2_val

//Default positive choice weight addition (if any)
add_weight_pos = false;
weight_posadd_tp = 1;
weight_posadd_cr = 'Blastoff';
weight_posadd_val = 2300;

//Default negative choice weight addition (if any)
add_weight_neg = false;
weight_negadd_tp = weight_posadd_tp;
weight_negadd_cr = weight_posadd_cr;
weight_negadd_val = weight_posadd_val;

// set default impact arrays for positive and negative
arr_positive[3] = 10
arr_positive[2] = 10
arr_positive[1] = 10
arr_positive[0] = 10
arr_negative[3] = 10
arr_negative[2] = 10
arr_negative[1] = 10
arr_negative[0] = 10

//set the alarm for drawing the text
alarm[11] = 10; 
