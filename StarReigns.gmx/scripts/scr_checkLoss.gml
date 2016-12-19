///scr_checkLoss

if global.core0 < 0 || global.core1 < 0 || global.core2 < 0 || global.core3 < 0
{
    fader = instance_create(0,0, obj_fade);
    with fader 
    {
    faderoom = rm_loss
    
    }    
    instance_destroy();
}

    
