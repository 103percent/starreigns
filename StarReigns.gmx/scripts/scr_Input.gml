/// scr_input(sidequest)
sidequest = argument0;
var loc;
var slide;
var start_y = room_height*0.44;
var move_lim = 120;
var rot_lim = 25;
var move_limy = 75;
var tolerance = 20;

if device_mouse_check_button_pressed(0, mb_any)
{
    dwn_x = mouse_x;
}
if device_mouse_check_button(0, mb_any)
{
    loc = mouse_x;
    slide = loc/dwn_x;
    dist = (slide)
    x = clamp((room_width/2)*slide, move_lim, (room_width-move_lim));
    // swipe and rotate card
    if loc >= dwn_x
    {
     dist = (2-slide);
     turn = clamp((1-dist)*rot_lim, 0, rot_lim);
     image_angle = (360-turn);
    }
    else if loc < dwn_x
    {
     dist = (slide);
     turn = clamp((1-dist)*rot_lim, 0, rot_lim);
     image_angle = (0 + turn);
    }
    y = start_y + (move_limy*(1-dist));
    
    //display option
    if dwn_x + tolerance < loc 
    {
        show_pos = true; 
        show_neg = false;
    }
    else if dwn_x - tolerance > loc
    {
        show_pos = false;
        show_neg = true;
    }
    else
    {
        show_pos = false;
        show_neg = false;
    }
    
    
}



if device_mouse_check_button_released (0, mb_any)
{
      up_x = mouse_x;
      if dwn_x + tolerance < up_x || dwn_x - tolerance > up_x
      {
        swiping = true
      }
      else
      {
        x = room_width/2
        y = start_y
        image_angle = 0
      }
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


