#!/bin/bash
if [[ "$1" = "Alice" ]]
then
    echo "Hello Alice"
elif [[ "$1" = "Bob" ]]
then
    echo "Hello Bob"
else
    echo "Hello Jhon Doe"
    exit 1;
fi
