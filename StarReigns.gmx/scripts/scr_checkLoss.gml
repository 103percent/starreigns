///scr_checkLoss

//check min
if global.core0 < 0 || global.core1 < 0 || global.core2 < 0 || global.core3 < 0
{
    fader = instance_create(0,0, obj_fade);
    with fader 
    {
    faderoom = rm_loss
    
    }    
    instance_destroy();
}
//check max
else if global.core0 > 100 || global.core1 > 100 || global.core2 > 100 || global.core3 > 100
{
    fader = instance_create(0,0, obj_fade);
    with fader 
    {
    faderoom = rm_loss
    
    }    
    instance_destroy();
}

    
