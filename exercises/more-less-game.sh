#!/bin/bash
let numero=$(( $RANDOM % 100 + 1))
#echo "$numero"

for i in {1..7}
do
    echo "Escribe el numero"
    read eleccion
    #echo "$numero"

    if ((numero < eleccion))
    then
        echo "El numero debe ser menor"
    elif ((numero > eleccion))
    then
        echo "El numero debe ser mayor"
    else
        echo "Ese es el número"
        exit 0
    fi

done
echo "Ya la cagaste, no adivinaste ni mergas"
