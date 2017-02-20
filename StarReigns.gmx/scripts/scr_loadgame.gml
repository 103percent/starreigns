///scr_loadgame

//check for savegame file then load it. 
//if no savegame file, create one and give it the base values. 
var basevalue = 50;
ini_open("savegame.ini");
if ini_section_exists("values")
{
    global.core0 = ini_read_real("values", "core0", basevalue);
    global.core1 = ini_read_real("values", "core1", basevalue);
    global.core2 = ini_read_real("values", "core2", basevalue);
    global.core3 = ini_read_real("values", "core3", basevalue);
    global.sidequest = ini_read_real("values", "sidequest", global.sidequest);
    global.waittime = ini_read_real("values", "waittime", date_current_datetime());
}
else
{
    global.core0 = basevalue;
    global.core1 = basevalue;
    global.core2 = basevalue;
    global.core3 = basevalue;
    global.sidequest = 0;
    global.waittime = date_current_datetime(); 
}
ini_close();
