/// scr_input(sidequest)
sidequest = argument0;

if device_mouse_check_button_pressed(0, mb_any)
{
 dwn_x = mouse_x;
}
if device_mouse_check_button(0, mb_any)
{
    var move_lim = 150
    var loc = mouse_x;
    var slide = loc/dwn_x;
    x = clamp((room_width/2)*slide, move_lim, (room_width-move_lim));
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
            scr_negativeImpact(sidequest);
        }
        else
        {
            scr_positiveImpact(sidequest);
        }

  swiping = false;
}

if keyboard_check_pressed(vk_left)
{
 scr_negativeImpact(sidequest);
}
if keyboard_check_pressed(vk_right)
{
 scr_positiveImpact(sidequest);
}


