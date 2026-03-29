#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Your Name

echo "Answer three questions to generate your manifesto."
echo ""

# --- User input ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Date and file ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Generate manifesto ---
echo "----------------------------------------" > $OUTPUT
echo "Open Source Manifesto - $DATE" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT
echo "" >> $OUTPUT

echo "I use $TOOL in my daily life, often without realizing how much it depends on open-source contributions." >> $OUTPUT
echo "To me, freedom means $FREEDOM, especially in the context of technology and software." >> $OUTPUT
echo "If given the opportunity, I would build $BUILD and share it freely so that others can learn and improve upon it." >> $OUTPUT
echo "Open source is not just about code, but about collaboration, transparency, and shared progress." >> $OUTPUT

# --- Output result ---
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT

# Note: You can create an alias like:
# alias manifesto='./script5.sh'
