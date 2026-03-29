#!/bin/bash
# Script 4: Log File Analyzer
# Author: Your Name

# --- Input arguments ---
LOGFILE=$1
KEYWORD=${2:-"error"}  # default = error
COUNT=0

# --- Check if file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# --- Check if file is empty (do-while style retry) ---
while [ ! -s "$LOGFILE" ]; do
    echo "File is empty. Please enter a valid log file:"
    read LOGFILE
done

# --- Read file line by line ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Output summary ---
echo "-----------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "-----------------------------------"

# --- Show last 5 matching lines ---
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
