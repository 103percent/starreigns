///scr_dealSFX();

var rand = irandom(100);
var track = sfx_deal1;
 
if rand > 50
{
 track = sfx_deal2;
}

if !audio_is_playing(track)
{
    audio_play_sound(track, 10, false);
}

