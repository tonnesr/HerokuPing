#!/bin/bash -·
while [ 1 ]
do
    currenttime=$(date +%H:%M)

    if [[ "$currenttime" > "06:00" ]] || [[ "$currenttime" < "23:59"  ]]; then
        echo "|| $currenttime - Pining: $host"
        nping -c 1 --tcp -p 80,433 aqueous-garden-80071.herokuapp.com ; echo $?
    else
        echo "xx $currenttime - Outside of operation time."
    fi

    sleep 5m
done