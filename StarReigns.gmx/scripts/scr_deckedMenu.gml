///scr_deckedMenu


if device_mouse_check_button_pressed(0, mb_any)
{
    if mouse_y > 800
    { 
        game_restart();
    }
};
