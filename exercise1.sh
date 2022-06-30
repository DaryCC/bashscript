sudo cp -r make-backup.sh /usr/local/bin/ sudo chmod +x
/usr/local/bin/make-backup.sh

unalias make-backup.sh

make-backup.sh photo

!#/bin/bash
  operation="$1"

if [[ "$operation" == "-a" ]]
then
    tar -c -f documents.tar ~/Documents
elif [[ "$operation" == "-c" ]]
then
    tar -c -j -f documents.tar.bz2 ~/Documents
elif [[ "$operation" == "-x" ]]
then
    tar -x -f documents.tar*
else
    echo "Invalid option"
    exit 1
fi

#!/bin/bash
if [[ "$1" = "Alice" ]]
then
    echo "Hello Alice"
elif [[ "$1" = "Bob" ]]
then
    echo "Hello Bob"
else 
    echo "Hello John Doe"
fi

#!/bin/bash

while ! ping -c 1 -W 1 google.com &> /dev/null
do
  sleep 1
done

#!/bin/bash

until ping -c 1 -W 1 google.com &> /dev/null
do
    sleep 1
done

echo "The google.com server is available"

#!/bin/bash

while true
do
	clear
	df -hT
	echo “Zzzzz”
	sleep 2
done
