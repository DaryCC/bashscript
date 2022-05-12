#!/usr/bin/bash
touch file1 file2 file3
ls "*"
echo "*"
echo '*'
ls *1
ls file[1-9]
# ls file[a-z] #ls: cannot access 'file[a-z]': No such file or directory
echo "------------------------------->"
touch .adotfile
mkdir .adotfolder
touch .adotfolder/file1 .adotfolder/.adotfile
