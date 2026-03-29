#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Your Name

PACKAGE="vlc"

# --- Check if package is installed ---
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."

    # Show version and details
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# --- Philosophy message using case ---
case $PACKAGE in
    vlc) echo "VLC: a free and open media player that removes codec restrictions." ;;
    apache2) echo "Apache: the web server that powers a large part of the internet." ;;
    mysql-server) echo "MySQL: open source database behind many applications." ;;
    firefox) echo "Firefox: a browser focused on privacy and open web standards." ;;
    *) echo "Unknown package." ;;
esac
