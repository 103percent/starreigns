///scr_startMenu

if device_mouse_check_button_pressed(0, mb_any)
{
    if (mouse_y > 100) && (mouse_y < 800)
    {
        
        if (global.waittime > date_current_datetime())
        {
            fader = instance_create(0,0, obj_fade);
            with fader 
            {
                faderoom = rm_decked
            }  
            instance_destroy();
        }
        else
        {
            instance_create(0,0, obj_fade);
            if !audio_is_playing(sfx_shuffle)
            {
                audio_play_sound(sfx_shuffle, 10, false);
            }
            instance_destroy();
        }
    }
    else if mouse_y < 100
    {
        global.setloss = !global.setloss
    }
    else if mouse_y > 800
    {
        scr_wipesave();
        game_restart();
    }
};


