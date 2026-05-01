///load_progressbar(id);

/*
// ID SPECIFICATIONS:
// 0 - ProgressBar 95 (first one!)
*/

var _id = argument0;
var _bg = 0;

if _id == 0 _bg = bg_load_95;

room_set_background(rm_loading,0,1,0,_bg,0,0,0,0,0,0,1);
audio_play_sound(snd_hdd_start,0,false);
room_goto(rm_loading);
