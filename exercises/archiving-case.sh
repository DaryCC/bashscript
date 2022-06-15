#!/bin/bash
operation="$1"
case "$operation" in
    "-a")
        tar -c -f documents.tar ~/Documents
    ;;

    "-c")
        tar -c -j -f documents.tar.bz2 ~/Documents
    ;;

    "-x")
        tar -x -f documents.tar*
    ;;

    *)
        echo "Invalid option"
        exit 1
    ;;
esac
