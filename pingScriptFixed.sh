#!/bin/bash -·
declare host="aqueous-garden-80071.herokuapp.com"
while [ 1 ]
do
    currenttime=$(date +%H:%M)

    if [[ "$currenttime" > "06:00" ]] && [[ "$currenttime" < "23:59"  ]]; then
        curl -A "Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)" --silent --head aqueous-garden-80071.herokuapp.com ; echo $?
    else
        echo "$currenttime - Outside of operation time."
    fi

    sleep 15m
done
