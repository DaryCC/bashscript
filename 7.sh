#!/bin/env bash
#COMMANDS SEQUENCE with input parameters,parametizing
tar -cjf "$1".tar.bz2 "$1" &&
    #for an aribitrary number of inputs
    #tar -cjf "$1".tar.bz2 "$@" &&
    #Bash replaces the $*
    #make-backup.sh "one two three"
    #Here is the replacement for the $@ construct:
    #"one" "two" "three"
    echo "tar - OK" >> results.txt ||
        { echo "tar - FAILS" > results.txt ; exit 1 ; }

cp -f "$1".tar.bz2  /home/darycc/Coding/github.com/DaryCC/bashscripting/docs/ &&
    echo "cp - OK" >> results.txt ||
        ! echo "cp - FAILS" >> results.txt

# tar -cjf /home/darycc/Coding/github.com/DaryCC/bashscripting/"$1".tar.bz2 /home/darycc/Coding/github.com/DaryCC/bashscripting/docs/ &&
#     echo "tar - OK" > results.txt ||
#         (echo "tar - FAILS" > results.txt ; exit 1 ;)

# cp -f /home/darycc/Coding/github.com/DaryCC/bashscripting/"$1".tar.bz2 /home/darycc/Coding/github.com/DaryCC/bashscripting/docs/ &&
#     echo "cp - OK" >> results.txt ||
#         ! echo "cp - FAILS" >> results.txt
