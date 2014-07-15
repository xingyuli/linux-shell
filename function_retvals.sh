#!/bin/sh

###################################
## approache 1. global variables ##
###################################

function myfunc1()
{
    myresult='some value'
}

myfunc1
echo $myresult


##################################
## approache 2. local variables ##
##################################

function myfunc2()
{
    local myresult='other value'
    echo "$myresult"
}

# the result is output to the stdout and the caller uses command substitution to
# capture the value in a variable
result=$(myfunc2) # or result=`myfunc`
echo $result


##########################################
## approache 3. accepts a variable name ##
##########################################

function myfunc3()
{
    local __resultvar=$1
    local myresult='fantasy'
    eval $__resultvar="'$myresult'"
}

# The eval statement basically tells bash to interpret the line twice, the
# first interpretion above results in the string:
#
#   result='fantasy'
#
# which is then interpreted once more and ends up setting the caller's
# variable.
#
# When you store the name of the variable passed on the command line, make sure
# you store it in a local variable with a name that won't be used by the
# caller.

myfunc3 wow
echo $wow

