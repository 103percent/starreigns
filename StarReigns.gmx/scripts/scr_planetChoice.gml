///scr_planetChoice()


if device_mouse_check_button_pressed(0, mb_any)
{
    var dwn_x = mouse_x;
    var dwn_y = mouse_y;
    var set = argument[0];

    if point_in_circle(dwn_x, dwn_y, x, y, sprite_width/2)
    {
        scr_setLocalNotif(waittime, 'Captain!', 'Captain! The Crew Needs You!');
        global.waittime = date_inc_second(date_current_datetime(), waittime)
        scr_saveSetList(set);
        scr_savegame();
        fader = instance_create(0,0, obj_fade);
        with fader 
        {
            faderoom = rm_decked
    
        }
    }
    
}    
