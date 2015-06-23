#!/bin/bash

#
STREAM=$1
DURATION=`echo ${2}*60 | bc`
LOCATION=/storage/music/triplej/
FILE=triplej.mp3

cd $LOCATION
rm -f triplej*

/usr/bin/streamripper $STREAM -A -l $DURATION -a $FILE -d $LOCATION -u "FreeAmp/2.x" --quiet --with-id3v1 

/usr/bin/id3tool -t "Triple J" -a "Triple J" -r "Various" -y "2015" $FILE

exit 0
