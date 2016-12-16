///scr_loadgame

//check for savegame file then load it. 
//if no savegame file, create one and give it the base values. 

ini_open("savegame.ini");
if ini_section_exists("values")
{
    global.core0 = ini_read_real("values", "core0", 100);
    global.core1 = ini_read_real("values", "core1", 100);
    global.core2 = ini_read_real("values", "core2", 100);
    global.core3 = ini_read_real("values", "core3", 100);
    global.encounter = ini_read_real("values", "encounter", 0);
}
else
{
    global.core0 = 100;
    global.core1 = 100;
    global.core2 = 100;
    global.core3 = 100;  
    global.encounter = 0;
}
ini_close();
