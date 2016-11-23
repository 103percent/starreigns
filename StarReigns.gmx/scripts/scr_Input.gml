/// scr_input()

if device_mouse_check_button_pressed(0, mb_any)
{
 dwn_x = mouse_x;
 
}

if device_mouse_check_button_released (0, mb_any)
{
      up_x = mouse_x;
      swiping = true
}

if swiping
{ 
        if dwn_x > up_x
        {
            scr_negativeImpact();
        }
        else
        {
            scr_positiveImpact();
        }

  swiping = false;
}

if keyboard_check_pressed(vk_left)
{
 scr_negativeImpact();
}
if keyboard_check_pressed(vk_right)
{
 scr_positiveImpact();
}

scr_killsave();


