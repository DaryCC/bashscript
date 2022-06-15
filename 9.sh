#! /bin/bash
# The [[ ]] operator
var="ab"
[[ (-n "$var" && "$var" < "abc") || -z "$var" ]] && echo "The string is not empty and less than \"abc\" or the string is empty"
# declare -i var1
# declare -i var2
var1=1
var2=6
if [ "$var1" -gt 5 -o 4 -lt "$var2" ]
then
    echo "The var1 variable is greater than 5 or var2 is less than 4"
fi


if [[ "$var1" > 5 || 4 < "$var2" ]]
then
    echo "The var1 variable is greater than 5 or var2 is less than 4"
fi
