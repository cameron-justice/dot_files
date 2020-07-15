#!/bin/sh
# start some nice programs

xrdb -merge ~/.Xresources

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xrandr --output DVI-D-0 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI-0 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-0 --off --output DP-1 --off

discord-canary &
vivaldi-stable &
#slstatus &
#exec dwm
#exec xmonad

# Gnome
export XDG_SESSION_TYPE=x11
export GDK_BACKEND=x11
exec gnome-session
