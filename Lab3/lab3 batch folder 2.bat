@echo off

mkdir "C:\Projects UNI\lab3\Labs\PZ-23-2\Shapovalov Vladyslav Serhiyovych\batch" 
mkdir "C:\Projects UNI\lab3\Labs\PZ-23-2\Shapovalov Vladyslav Serhiyovych\batch\Hidden folder"
mkdir "C:\Projects UNI\lab3\Labs\PZ-23-2\Shapovalov Vladyslav Serhiyovych\batch\Not hidden folder"

attrib +h "C:\Projects UNI\lab3\Labs\PZ-23-2\Shapovalov Vladyslav Serhiyovych\batch\Hidden folder"

xcopy /? > "C:\Projects UNI\lab3\Labs\PZ-23-2\Shapovalov Vladyslav Serhiyovych\batch\Not hidden folder\copyhelp.txt"

xcopy "C:\Projects UNI\lab3\Labs\PZ-23-2\Shapovalov Vladyslav Serhiyovych\batch\Not hidden folder\copyhelp.txt" "C:\Projects UNI\lab3\Labs\PZ-23-2\Shapovalov Vladyslav Serhiyovych\batch\Hidden folder"
