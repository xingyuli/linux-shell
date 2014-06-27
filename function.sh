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

function today {
    echo "Today's date is:"
    date +"%A, %B %-d, %Y"
}

today

