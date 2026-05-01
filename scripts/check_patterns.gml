///check_patterns();
var _str = "";
var _b = 0;
for (var i=0; i<ds_list_size(global.progress); i++)
{
    var _i=ds_list_find_value(global.progress,i);
    if _i==$1E93F7 _str+="Y"
    else if _i==$7F0000
    {
        _str+="B"
        _b++;
    }
}

if _b=10 window_set_caption("Yin and yang")

if _str=="BBBBBBBBBBBBBBBBBBBB" window_set_caption("Perfectionist")
else if _str=="YYYYYYYYYYYYYYYYYYYY" window_set_caption("Nonconformist")
else if _str=="BBBBBBBBBBBBBBBBBBBY" window_set_caption("95%")
else if _str=="YYYYYYYYYYYYYYYYYYYB" window_set_caption("5%")
else if _str=="BBBBBBBBYBYBYBYBYBYB" or _str=="YYYYYYYYBYBYBYBYBYBY" window_set_caption("Morse")
else if _str=="BBBBBYBBBBYYYYBYYYYY" or _str=="YYYYYBYYYYBBBBYBBBBB" window_set_caption("Harmonic perfection")
else if _str=="BYBYBYBYBYBYBYBYBYBY" or _str=="YBYBYBYBYBYBYBYBYBYB" window_set_caption("Zebra")
