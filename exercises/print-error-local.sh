#! /bin/bash

code_to_error_de()
{
    case $1 in
        1)
            echo "Der Datei wurde nicht gefunden:"
            ;;
        2)
            echo "Berechtigung zum Lesen der Datei verweigert:"
            ;;
    esac
}

code_to_error_en()
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
    echo "$LANG"
  case $LANG in
  de_DE)
    local func="code_to_error_de"
    ;;
  en_US)
    local func="code_to_error_en"
    ;;
  *)
    local func="code_to_error_en"
    ;;
esac

echo "$($func $1) $2" >> debug.log  }

print_error 1 "readme.txt"
