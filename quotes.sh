#!/bin/sh

TITLE="System Information for $HOSTNAME"
RIGHT_NOW=$(date +"%x %r %z")
TIME_STAMP="Updated on $RIGHT_NOW by $USER"

echo "My Host name is $HOSTNAME."

# Single quote limit substitution.
echo 'My Host name is $HOSTNAME.'

