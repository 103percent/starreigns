///scr_savegame

ini_open("savegame.ini");
ini_write_real("values", "core0", global.core0);
ini_write_real("values", "core1", global.core1);
ini_write_real("values", "core2", global.core2);
ini_write_real("values", "core3", global.core3);
ini_close();