#!/bin/sh

if [ "$DESKTOP_SESSION" = "LXQt Desktop" ]; then 
   sleep 20s
   killall conky
   cd "$HOME/.conky"
   conky -c "$HOME/.conky/nowplaying" &
   cd "$HOME/.conky/victorConky"
   conky -c "$HOME/.conky/victorConky/ArchLarge" &
   exit 0
fi
