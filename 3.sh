#!/usr/bin/env bash
#use of xargs
# find /home/darycc/Coding/github.com/DaryCC/bashscripting -type f | xargs grep -ni  "nadia"
find  -type f | xargs grep -ni  "nadia"
echo "======================================>"
#-I is used to insert parameters in the middle of commands
#-t used for debugging, displays the constructed commands before executing them
find -type f -name "*.txt" |xargs -t -I arg  cp arg sub

# Let’s suppose our computer’s processor has four cores. Then, we can copy files in four parallel processes. The following command completes this:

# find -type f -iname "file*"|xargs -t -P 4 -I arg  cp arg sub2
