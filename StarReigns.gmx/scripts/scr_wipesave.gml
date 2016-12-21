///scr_wipesave

ini_open("savegame.ini");
ini_section_delete("values");
ini_section_delete("setlist");
ini_close();
show_debug_message("Erasing Save")
