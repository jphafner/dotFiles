#!/bin/bash

####################################################
# This script opens Firefox in a maximized window. #
# The following packages are required:             #
#   zenity                                         #
#   wmctrl                                         #
####################################################
# Written by Crusty Old Fart - 11/8/10             #
####################################################

# ====================
# Variable assignment:
# ====================
APPNAME=firefox
CAPNAME=Firefox

# =======================================================
# Terminate script if the application is already running.
# =======================================================
if [ $(ps -ef | grep -ci $APPNAME) -gt 1 ]
then
 zenity --warning --title="Script Terminated" --text="$CAPNAME is already running."
 exit 0
fi

# ======================================
# Run the application in the background.
# ======================================
$APPNAME &

# ======================================================
# Allow the application time to establish its processes.
# ======================================================
while [ $(wmctrl -l | grep -ci $APPNAME) -lt 1 ]
do 
 sleep .2s
done

# ===============================================
# Calculate the pixel area of the opening window.
# ===============================================
x1=$(wmctrl -Gl | grep -i $APPNAME | awk '{print $5}')
y1=$(wmctrl -Gl | grep -i $APPNAME | awk '{print $6}')
z1=$[$x1 * $y1]

# ===========================
# Toggle window maximization.
# ===========================
wmctrl -r $APPNAME -b toggle,maximized_vert,maximized_horz

# ===============================================
# Calculate the pixel area of the toggled window.
# ===============================================
x2=$(wmctrl -Gl | grep -i $APPNAME | awk '{print $5}')
y2=$(wmctrl -Gl | grep -i $APPNAME | awk '{print $6}')
z2=$[$x2 * $y2]

# ============================================
# Toggle the window to maximum size if needed.
# ============================================
if [ $z2 -lt $z1 ]
then
 wmctrl -r $APPNAME -b toggle,maximized_vert,maximized_horz
fi

# ====================================================================
# Force script suicide to prevent hanging on missing RandR extension
# when Xinerama is enabled to extend desktop across multiple monitors.
# ====================================================================
kill $$

