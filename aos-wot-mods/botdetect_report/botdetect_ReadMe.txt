This mod allows for automatic marking of known bot users and idlers defined on www.eu-comm.de or if this fails,
locally in the file res_mods/botdata.json.

It also reports any complaints issued ingame regarding Idle/Bot as a copy to our team via vbaddict.net. (Thank you Phalynx.)
(This should give us some pointers where to look if certain individuals are reported several times by different people.)

The mod will only retrieve the botdata once per gamesession during mapload of the first battle to protect server bandwidth.
python.log will show if the botdata was successfully retrieved at the start of the game session:
[NOTE] (botdetect.py, 20): Request of www.eu-comm.de botdata successful.

If a player from the list is in your game, he will be awarded by joining the [BOT!] clan once the map has finished loading. 

(There is no real [BOT!] clan in wot as ! is not allowed for tags.)

If you run xvm with enabled clan icons, you will also see the red and white botskull icon.

-------------------------------------------------------------------------------------------------


The botdata.json file is a simple human readable text file type, but certain format has to be kept.

- Never remove one of the [ and ] brackets at start or end of the list.
- All names have to be kept inside " quotes.
- All names have to be seperated with a trailing , comma at the end EXCEPT the last name in the list.

I recommend editing with Notepad++ as this editor keeps the encoding of the file and automatically keeps indentation.

Thats all. Have fun.