@echo off

mkdir "C:\Projects UNI"
mkdir "C:\Projects UNI\lab3" 
mkdir "C:\Projects UNI\lab3\Labs" 
mkdir "C:\Projects UNI\lab3\Labs\PZ-23-2" 
mkdir "C:\Projects UNI\lab3\Labs\PZ-23-2\Shapovalov Vladyslav Serhiyovych" 
mkdir "C:\Projects UNI\lab3\Labs\PZ-23-2\Shapovalov Vladyslav Serhiyovych\Command line" 
mkdir "C:\Projects UNI\lab3\Labs\PZ-23-2\Shapovalov Vladyslav Serhiyovych\Command line\Hidden folder"
mkdir "C:\Projects UNI\lab3\Labs\PZ-23-2\Shapovalov Vladyslav Serhiyovych\Command line\Not hidden folder"

attrib +h "C:\Projects UNI\lab3\Labs\PZ-23-2\Shapovalov Vladyslav Serhiyovych\Command line\Hidden folder"

xcopy /? > "C:\Projects UNI\lab3\Labs\PZ-23-2\Shapovalov Vladyslav Serhiyovych\Command line\Not hidden folder\copyhelp.txt"

xcopy "C:\Projects UNI\lab3\Labs\PZ-23-2\Shapovalov Vladyslav Serhiyovych\Command line\Not hidden folder\copyhelp.txt" "C:\Projects UNI\lab3\Labs\PZ-23-2\Shapovalov Vladyslav Serhiyovych\Command line\Hidden folder"
