///load_strings(language);
var _lang = argument0;
var _path = "";

if _lang=0 _path = "en"
else if _lang=1 _path = "ru";

show_debug_message("LOADING STRINGS...");
ds_map_clear(global.lang);

if directory_exists(path+"international/"+_path)
{
    var file = file_text_open_read(path+"international/"+_path+"/strings.xml");
    while (!file_text_eof(file))
    {
        var line = file_text_read_string(file);
        file_text_readln(file);
        if (string_pos("<t name='", line) > 0)
        {
            var p1 = string_pos("name='", line) + 6;
            var p2 = string_pos("'>", line);
            var key = string_copy(line,p1,p2 - p1);
            var p3 = p2 + 2;
            var p4 = string_pos("</t>", line);
            var value = string_copy(line,p3,p4 - p3);
            ds_map_add(global.lang, key, value);
        }
    }
    file_text_close(file);
}
else
{
    ds_map_add(global.lang, "Shot", "[404]");
    ds_map_add(global.lang, "Disclaimer", "[404]");
}
