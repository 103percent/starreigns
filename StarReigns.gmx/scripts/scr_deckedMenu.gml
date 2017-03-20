///scr_deckedMenu


if device_mouse_check_button_pressed(0, mb_any)
{
    if mouse_y > 800
    { 
        game_restart();
    }
}

if (global.waittime < date_current_datetime())
        {
            instance_create(0,0, obj_fade);
            if !audio_is_playing(sfx_shuffle)
            {
                audio_play_sound(sfx_shuffle, 10, false);
            }
            instance_destroy();
        }
