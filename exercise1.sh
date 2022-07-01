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

Alice=alice@gmail.com
Bob=(697) 955-5984
Eve=(245) 317-0117
Mallory=mallory@hotmail.com

#!/bin/bash

for word in $1
do
    echo "$word"
done

#!/bin/bash
for word in $@
do
  echo "$word"
done

./for-string.sh this is a string
./for-string.sh "this is a string"

#get rid of "in $@"
  for word
  do
    echo "$word"
  done

#!/bin/bash
#"hola perro"
for word in $1
do
    echo "$word"
done

#!/bin/bash
#hola,perro,asqueroso
#./for-path.sh "~/My Documents/file1.pdf,~/My Documents/report2.txt"
  IFS=$','
  for path in $1
  do
      echo "$path"
  done

#!/bin/bash
array=(Alice Bob Eve Mallory)

for element in "${array[@]}"
do
    echo "$element"
done

array=(Alice Bob Eve Mallory)

for i in 0 1 2
do
  echo "${array[i]}"
done

array=(Alice Bob Eve Mallory)

for i in {0..2}
do
  echo "${array[i]}"
done

#!/bin/bash

    array=(Alice Bob Eve Mallory)

    for element in "${array[@]:0:2}"
    do
        echo "$element"
    done
#Alice
#Bob
