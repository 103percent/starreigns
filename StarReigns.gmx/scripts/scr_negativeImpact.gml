/// scr_negativeImpact()


//Apply impact to core values
core0 -= arr_negative[0];
core1 -= arr_negative[1];
core2 -= arr_negative[2];
core3 -= arr_negative[3];

//Visual aid
shot = instance_create(x, y, obj_shot)
  with shot
    {
     hspeed = -10
    }
