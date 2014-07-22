#!/bin/sh

# Create a thread dump against the specified JAVA_PID process every INTERVAL
# seconds.

JAVA_PID=$1
LOOP=${2:-10}
INTERVAL=${3:-10}

for ((i=1; i<=$LOOP; i++))
do
    kill -3 $JAVA_PID
    echo "thread dump # $i"
    if [ $i -lt $LOOP ]; then
        echo "Sleeping..."
        sleep $INTERVAL
    fi
done

