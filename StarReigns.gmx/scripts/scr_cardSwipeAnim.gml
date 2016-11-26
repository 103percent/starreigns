///scr_cardSwipeAnim(direction)

var dir = argument[0]
var movespeed = 15;
var rotation = 1;

if dir = -1
{
 movespeed = movespeed*-1
 rotation = -1;
}

var cardsprite = sprite_index;
var cardcolour = image_blend;
var shot = instance_create(x, y, obj_shot)
  with shot
    {
     image_blend = cardcolour;
     sprite_index = cardsprite;
     hspeed = movespeed;
     vspeed = -5;
     rot = rotation;
    }

