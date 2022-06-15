#!/usr/bin/env bash
#Conditional statements
if ! grep -RlZ "bash" target | xargs -0 cp -t .
then
    echo "cp - FAILS"
    exit 1
fi

echo "cp - OK"

if grep -RLZ "bash" target | xargs -0 rm
then
    echo "rm - OK"
else
    echo "rm - FAILS"
fi
