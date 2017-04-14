#!/bin/sh

#http://tripie.sweb.cz/utils/wmctrl/#tips
#http://linux.byexamples.com/archives/179/wmctrl-a-handy-tool-for-you-to-manipulate-windows/

# Unshade and bring to front
if [ -f /tmp/.quake.shaded ]; then
    wmctrl -r 'Quake Term' -b remove,below
    wmctrl -r 'Quake Term' -b remove,shaded
    rm /tmp/.quake.shaded
# Shade and send to back
else
    wmctrl -r 'Quake Term' -b add,shaded
    wmctrl -r 'Quake Term' -b add,below
    touch /tmp/.quake.shaded
fi

wmctrl -r Firefox -e '0,6,0,1040,708'

# Change to normal mode
if [ -f /tmp/.irssi.halfshaded ]; then
    wmctrl -r 'Irssi Term' -e '0,469,0,810,500'
    wmctrl -r Firefox -e '0,3,0,1040,708'
    rm /tmp/.irssi.halfshaded

# Change to chat mode
else
    wmctrl -r Firefox -e '0,3,223,1210,535'
    wmctrl -r 'Irssi Term' -e '0,0,0,1214,160'
    touch /tmp/.irssi.halfshaded
fi


gnome-terminal -t mytitle; wmctrl -r mytitle -t 3

# To move a windows based on its ID instead of title, specified with -i.
wmctrl -i -r 0x03000003 -t 2

#This does move and resize Firefox to 0,0 with a width of 1024 and height 768. 
#However as soon as I click anywhere within the Firefox window or activate it it jumps 15 pixels to the right.
wmctrl -r 0x02e00080 -e 0,0,0,1024,768 -i


