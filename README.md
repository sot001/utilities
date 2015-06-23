# utilities

Just a collection of scripts I use daily.

### record_triplej.sh
Used to record Triple J on a schedule so I can listen to shows once I'm awake.

Requires:

* streamripper
* id3tool


Usage:
```
 record_triplej.sh [stream location] [duration in minutes] [file location]
```
eg;
```
 record_triplej.sh http://shoutmedia.abc.net.au:10426/ 180 /storage/music/triplej > /dev/null 2>&1
```

## MythTV
### mythpostprocess.sh
Encodes and creates nice filename links for mythtv recording to play via plex server

Requires:

* ffmpeg
* working mythtv system
* plex media server

