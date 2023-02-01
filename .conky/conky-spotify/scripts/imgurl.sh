#!/bin/bash

trackid=`dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata' | grep -E -A 1 "trackid" | grep -E -v "trackid"| cut -b 44- | cut -d '"' -f 1`
#echo $trackid
oembed_url="https://open.spotify.com/oembed?url=$trackid"
#echo $oembed_url
imgurl=`dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata' | egrep -A 1 "artUrl" | egrep -v "trackid"| cut -b 44- | cut -d '"' -f 1`
echo $imgurl
