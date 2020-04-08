#!/bin/sh
# start some nice programs

xrdb -merge ~/.Xresources

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xrandr --output DVI-D-1 --auto --output HDMI-1 --auto --right-of DVI-D-1

slstatus &
exec dwm
