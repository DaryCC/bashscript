#!/usr/bin/env bash
variable="$1"
case "$variable" in
    "Alice")
        echo "Hello Alice"
    ;;

    "Bob")
        echo "Hello Bob"
    ;;

    *)
        echo "Hello John Doe"
        exit 1;
    ;;
esac
