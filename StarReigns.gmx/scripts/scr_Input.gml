/// scr_Input
/*
if device_mouse_check_button_pressed(0, mb_any)
{
    shot = instance_create(x, y, obj_shot)
    with shot
    {
     hspeed = -10
    }
}
*/
swiping = false;
dwn_x = 0
dwn_y = 0 
up_x = 0
up_y = 0

if device_mouse_check_button_pressed(0, mb_any)
{
 dwn_x = mouse_x

}

if device_mouse_check_button_released (0, mb_any)
{
 up_x = mouse_x
 swiping = true;
}

if swiping
{
shot = instance_create(x, y, obj_shot)
 if dwn_x > up_x 
 {
  with shot
    {
     hspeed = -10
    }
  }
  else
  {
   with shot
    {
     hspeed = 10
    }
  }
  swiping = false;
}



