///scr_setLocalNotif(waittime in mins, title, message)
if date_get_timezone() != timezone_utc
    {
    date_set_timezone(timezone_utc);
    }


var wait = argument[0];
var title = argument[1];
var message = argument[2];
var data = "Returning";
var timing = date_inc_second(date_current_datetime(), wait);

title = "StarReigns!"
if os_type == os_android
{
    push_local_notification(timing, title, message, data);
    show_debug_message('Android Notification set');
}
else
{
 show_debug_message('Wrong OS for notif');
}


