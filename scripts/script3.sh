#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Your Name

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo ""
echo "Checking VLC config directory..."

if [ -d "$HOME/.config/vlc" ]; then
    ls -ld "$HOME/.config/vlc"
else
    echo "VLC config directory not found."
fi
