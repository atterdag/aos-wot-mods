$ECHO OFF
DIR /S /B /A:-D /O:GN res_mods > res_mods-files.txt
DIR /S /B /AD /O:GN res_mods > res_mods-directories.txt
DIR /S /B /A:-D /O:GN aos-wot-mods > aos-wot-mods-files.txt
DIR /S /B /AD /O:GN aos-wot-mods > aos-wot-mods-directories.txt
