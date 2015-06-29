#!/bin/bash

usage () {
	echo "Usage: $0 -u stream -t duration -d location" >&2
}


if [ $# -lt 3 ]; then
	usage
	exit 1	
fi

# get arguments
url=  time= dir=

while getopts u:t:d: opt
do
        case $opt in
        u)      url=$OPTARG
                ;;
        t)      time=`echo ${OPTARG}*60 | bc`
                ;;
        d)      dir=$OPTARG
                ;;
        '?')    echo "$0: invalid option -$OPTARG" >&2
				usage
                exit 1
                ;;
        esac
done

shift $((OPTIND -1))

FILE=triplej.mp3

cd $dir
# should have this as an argument too
rm -f triplej.*

/usr/bin/streamripper $url -o always -A -l $time -a $FILE -d $dir -u "FreeAmp/2.x" --quiet --with-id3v1 

/usr/bin/id3tool -t "Triple J" -a "Triple J" -r "Various" -y "2015" $FILE

exit 0
