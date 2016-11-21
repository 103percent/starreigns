/// scr_Input

if device_mouse_check_button_pressed(0, mb_any)
{
    shot = instance_create(x, y, obj_shot)
    with shot
    {
     hspeed = -10
    }
}


