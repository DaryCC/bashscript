#!/bin/bash
#COMMANDS SEQUENCE
# (tar -cjf ~/docs.tar.bz2 ~/docs &&
#      echo "tar - OK" > results.txt ||
#          ! echo "tar - FAILS" > results.txt) &&
#     (cp -f ~/docs.tar.bz2 ~/docs-backup &&
#          echo "cp - OK" >> results.txt ||
#              ! echo "cp - FAILS" >> results.txt)

tar -cjf /home/darycc/Coding/github.com/DaryCC/bashscripting/photo.tar.bz2 /home/darycc/Coding/github.com/DaryCC/bashscripting/docs/ &&
    echo "tar - OK" > results.txt ||
        (echo "tar - FAILS" > results.txt ; exit 1 ;)

cp -f /home/darycc/Coding/github.com/DaryCC/bashscripting/photo.tar.bz2 /home/darycc/Coding/github.com/DaryCC/bashscripting/docs/ &&
    echo "cp - OK" >> results.txt ||
        ! echo "cp - FAILS" >> results.txt
