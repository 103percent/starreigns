///scr_killsave

//Deletes the save section for core values. Restart game for fresh save. 

if (keyboard_check_pressed(vk_space))
{
 ini_open("savegame.ini");
 ini_section_delete("values");
 ini_close();
 show_debug_message("Erasing Save")
}
