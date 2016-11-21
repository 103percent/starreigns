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
    

