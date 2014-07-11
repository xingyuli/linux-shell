#!/bin/sh

LOOP=10
INTERVAL=1

for ((i=1;i<=$LOOP;i++))
do
    echo "$i"
    if [ $i -lt $LOOP ]; then
        echo "sleeping..."
        sleep $INTERVAL
    fi
done

