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

#!/bin/bash

find . -maxdepth 1 -print0 |
while IFS= read -r -d '' filename
do
    file "$filename"
done

for filename in ~/Documents/*.pdf
#or
find . -maxdepth 1 -exec file {} \;

#!/bin/bash

result=1

for i in {1..5}
do
    ((result *= $i))
done

echo "The factorial of 5 is $result"

#!/bin/bash

result=1

for i in $(seq $1)
do
    ((result *= $i))
done

echo "The factorial of $1 is $result"

#!/bin/bash

result=1

for (( i = 1; i <= $1; ++i ))
do
    ((result *= i))
done

echo "The factorial of $1 is $result"

#!/bin/bash

array=(Alice Bob Eve Mallory)
is_found="0"
GET
for element in "${array[@]}"
do
    if [[ "$element" == "$1" ]]
    then
        is_found="1"
        break
    fi
done
#no equal
if [[ "$is_found" -ne "0" ]]
then
    echo "The array contains the $1 element"
else
    echo "The array does not contain the $1 element"
fi

#!/bin/bash

array=(Alice Bob Eve Mallory)

for element in "${array[@]}"
do
  if [[ "$element" == "$1" ]]
  then
    echo "The array contains the $1 element"
    exit 0
  fi
done

echo "The array does not contain the $1 element"

#!/bin/bash

array=(1 25 -5 4 -9 3)
sum=0

for element in "${array[@]}"
do
  if (( 0 < element ))
  then
    ((sum += element))
  fi
done

echo "The sum of the positive numbers is $sum"

#!/bin/bash

array=(1 25 -5 4 -9 3)
sum=0

for element in "${array[@]}"
do
  if (( element < 0))
  then
    continue
  fi

  ((sum += element))
done

echo "The sum of the positive numbers is $sum"

#!/bin/bash
    mem() { cat /proc/meminfo; }
#mem
#unset mem
#unset -f mem, to remove the function and keep the variable

eval echo hi
#output
# __ed_mem.txt
# __ed_script.sh
# __ed_stderr.txt
# __ed_stdout.txt
# main.sh
# output

code_to_error()
{
  case $1 in
    1)
      echo "File not found:"
      ;;
    2)
      echo "Permission to read the file denied:"
      ;;
  esac
}

print_error()
{
  echo "$(code_to_error $1) $2" >> debug.log
}


# Calling the function
print_error 1 "readme.txt"
print_error 2 "readme.txt"

code_to_error()
{
  case $1 in
    1)
      error_text="File not found:"
      ;;
    2)
      error_text="Permission to read the file denied:"
      ;;
  esac
}

print_error()
{
  code_to_error $1
  echo "$error_text $2" >> debug.log
}


# Calling the function
print_error 1 "readme2.txt"
print_error 2 "readme2.txt"

code_to_error()
{
  local _result_variable=$2

  case $1 in
    1)
      eval $_result_variable="'File not found:'"
      ;;
    2)
      eval $_result_variable="'Permission to read the file denied:'"
      ;;
  esac
}

print_error()
{
  code_to_error $1 "error_text"
  echo "$error_text $2" >> debug.log
}


# Calling the function
print_error 1 "readme.txt"
print_error 2 "readme.txt"
