///check_patterns();
var _res = "Bravo";
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

if _b=10 _res="Yin and yang";

if _str=="BBBBBBBBBBBBBBBBBBBB" _res="Perfectionist"
else if _str=="YYYYYYYYYYYYYYYYYYYY" _res="Nonconformist"
else if _str=="BBBBBBBBBBBBBBBBBBBY" _res="95%"
else if _str=="YYYYYYYYYYYYYYYYYYYB" _res="5%"
else if _str=="BBBBBBBBYBYBYBYBYBYB" or _str=="YYYYYYYYBYBYBYBYBYBY" _res="Morse"
else if _str=="BBBBBYBBBBYYYYBYYYYY" or _str=="YYYYYBYYYYBBBBYBBBBB" _res="Harmonic perfection"
else if _str=="BYBYBYBYBYBYBYBYBYBY" or _str=="YBYBYBYBYBYBYBYBYBYB" _res="Zebra";

return _res+"!";
