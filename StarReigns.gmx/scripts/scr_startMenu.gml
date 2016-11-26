///scr_startMenu

if device_mouse_check_button_pressed(0, mb_any)
{
    instance_create(0,0, obj_fade);
    instance_destroy();
};


