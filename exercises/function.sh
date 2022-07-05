find_func2() { find $1 -type f; }
# code_to_error()
# {
#     case $1 in
#         1)
#             echo "File not found:"
#             ;;
#         2)
#             echo "Permission to read the file denied:"
#             ;;
#     esac
# }

# print_error()
# {
#     echo "$(code_to_error $1) $2" >> debug.log
# }


# Calling the function
# print_error 1 "readme.txt"
# print_error 2 "sexzo.txt"
