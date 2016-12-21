///scr_saveSetList
var str = ds_list_create(); 
ds_list_add(str, 'The Fear')
ds_list_add(str, 'Beast Mode');;
ini_open("savegame.ini");
ini_write_string("setlist", "0", ds_list_write(str));
ini_close();
