///scr_saveSetList(Set Name1, Set Name2, etc. etc. arguments should be passed as strings) 
var str = ds_list_create(); 
var q
for (q = 0; q < argument_count; q++)
    {
        ds_list_add(str, argument[q])
    }
ini_open("savegame.ini");
ini_write_string("setlist", "0", ds_list_write(str));
ini_close();
ds_list_destroy(str); 
