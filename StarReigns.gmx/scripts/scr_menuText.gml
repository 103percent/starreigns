///scr_menuText()

//Text for screens
//wait
var wait = "We're en-route captain. Get some rest. We'll notify you if something comes up.";
//core0
var tech = "You failed to manage your tech. Tap to restart";
//core1
var econ = "You failed to manage your cash dollah. Tap to restart.";
//core2
var ship = "You failed to manage your ship. Tap to restart.";
//core3
var crew = "Your crew hate you for some reason. Tap to restart.";
//map
var map = "Where to next Captain? Tap a planet!";


var txt = "Ooops text missing";
//Draws the relevant game text
if (room = rm_start)
{
    scr_drawMenu();
}
if (room = rm_decked)
{
    txt = wait;
    scr_drawDecked(txt);
    scr_drawWait();
}
if (room = rm_end)
{
    txt = 'This is the end of the game! Thanks for playing!'
    scr_drawDecked(txt);
}
if (room = rm_loss)
{
    if global.core0 < 0 || global.core0 > 100
    {
        txt = tech;
    }
    else if global.core1 < 0 || global.core1 > 100
    {
        txt = econ;
    }
    else if global.core2 < 0 || global.core2 > 100
    {
        txt = ship;
    }
    else if global.core3 < 0 || global.core3 > 100
    {
        txt = crew;
    }
    scr_drawDecked(txt);
}
if (room = rm_map)
{
    txt = map;
    scr_drawDecked(txt); 
}
