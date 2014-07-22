#!/bin/sh

# Create a ssh tunnel to remote_ip:remote_port via 127.0.0.1:local_port using
# the current user as the login user, running in the background.

remote_ip=$1
remote_port=$2

local_port=${3:-3031}

ssh -f $(whoami)@$remote_ip -L $local_port:127.0.0.1:$remote_port -N

