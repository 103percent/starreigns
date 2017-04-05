///scr_initDealer()

drawtime = 1
decked = false;
drawlimit = 30;
tutorial_wait = 5;
tutorial_count = 0;
tutorial_max = 2;
tutorial_on = false;
arr_deck = scr_setDeck();
cardcount = (array_height_2d(arr_deck) - 1);
alarm[0] = room_speed*drawtime;
alarm[2] = 30*tutorial_wait;
//This is the defaut time between 'sessions' used for both notifications and scene setting
//currently in seconds
waittime = 15 
