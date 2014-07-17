#!/bin/sh

################################################################################
#                                                                              #
# Aliases are good for very simple commands, but if you want to create         #
# something more complex, you should try shell functions.                      #
#                                                                              #
# Believe it or not function is a shell builtin too, and as with alias, you    #
# can enter shell functions directly at the command prompt.                    #
#                                                                              #
################################################################################

# A couple of important points about functions:
# 1. They must appear before you attempt to use them.
# 2. The function body (the portions of the function between the { and }
#    characters) must contain at least one valid command.
#
# function this_func_will_not_execute_without_error
# {
#
# }
#
# The simple way to fix the above function is to pace a return statement.

function today {
    echo "Today's date is:"
    date +"%A, %B %-d, %Y"
}

today

# The function parameter is started from $1, while the $0 is the name of the
# current executing shell script.
#
# To invoke the function use the following syntax:
#   greeting param1 param2
function greeting() {
    name=$1
    echo "\$0 is: $0"
    echo "\$@ is: $@"
    echo "Hello ${name}!"
}

greeting Xingyu
greeting Mountain Top

function display_current_func_name() {
    echo "the current func name is: $FUNCNAME"
}

display_current_func_name

