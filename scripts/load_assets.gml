///load_assets();
// Loads assets from original game?

path = working_directory+"/Resources/";
global.lang = ds_map_create();
ds_map_add(global.lang, "Shot", "[404]");
ds_map_add(global.lang, "Disclaimer", "[404]");

globalvar snd_jump1;
globalvar snd_jump3;
globalvar snd_miss;
globalvar snd_fanfare;

snd_jump1 = placeholder_snd;
snd_jump3 = placeholder_snd;
snd_miss = placeholder_snd;
snd_fanfare = placeholder_snd;

if directory_exists(path)
{
    globalvar img_path;
    globalvar snd_path;
    globalvar bg_path;
    
    bg_path = path+"wallpapers.desktop/";
    img_path = path+"art/";
    snd_path = path+"snd_conv/";
    
    load_strings(global.language);
    if !directory_exists(bg_path) exit;
    if !directory_exists(img_path) exit;
    
    if !directory_exists(snd_path) exit;
    
    snd_jump1 = audio_create_stream(snd_path+"jump1.ogg");
    snd_jump3 = audio_create_stream(snd_path+"jump3.ogg");
    snd_miss = audio_create_stream(snd_path+"miss.ogg");
    snd_fanfare = audio_create_stream(snd_path+"fanfare.ogg");
    
    /*
    tried to make ttf importer. it works, but anti-aliasing. i hate it
    
    globalvar fnt_main;
    globalvar fnt_main_big;
    fnt_main = font_add(path+"fonts/progresspixel.ttf",12,0,0,32,128);
    fnt_main_big = font_add(path+"fonts/progresspixel.ttf",20,0,0,32,128);
    */
    global.placeholder=0;
    exit;
}
