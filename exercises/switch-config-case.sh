#! /bin/bash

opcion="$1"
rm -r ~/.bashrc
case "$opcion" in
    "h")
        ln -s ~/.bashrc-home ~/.bashrc
        ;;
    "w")
        ln -s ~/.bashrc-work ~/.bashrc
        ;;
    *)
        echo "opcion inválida"
        exit 1;
        ;;
esac
