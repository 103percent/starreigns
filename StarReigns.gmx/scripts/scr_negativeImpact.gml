/// scr_negativeImpact()


//Apply impact to core values
global.core0 -= arr_negative[0];
global.core1 -= arr_negative[1];
global.core2 -= arr_negative[2];
global.core3 -= arr_negative[3];

//Visual aid
shot = instance_create(x, y, obj_shot)
  with shot
    {
     hspeed = -10
    }
