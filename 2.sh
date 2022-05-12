#!/usr/bin/bash
#redirecting input and output streams
# echo $(0< file1 )
# echo "-=--------=-==0=0==================" >> lista.txt
# find ~/ -path */DaryCC/bashscripting/* -name "file*" -exec cat {} \;
find  / -path */DaryCC/bashscripting/* -name "file*" >> lista.txt;
find  / -path */DaryCC/bashscripting/* -name "file*" &>> listaYerrores.txt;
# echo "-=--------=-==0=0==================" >> lista.txt
# find  ~/ -path */DaryCC/bashscripting/* -name "file*" >> lista.txt;

