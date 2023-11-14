#!/bin/bash

# Define source and destination paths
SOURCE=""
DEST_BASE=""

# Get current date details
YEAR=$(date +"%Y")
MONTH=$(date +"%B")
DAY=$(date +"%d")

# Create destination path with year and month
DEST="$DEST_BASE/$YEAR/$MONTH"

# Check if Year folder exists, if not create it
if [ ! -d "$DEST_BASE/$YEAR" ]; then
    mkdir -p "$DEST_BASE/$YEAR"
fi

# Check if Month folder exists, if not create it
if [ ! -d "$DEST" ]; then
    mkdir -p "$DEST"
fi

# Define the destination file name with date pattern
FILENAME="file-$MONTH-$DAY-$YEAR.txt"

# Copy the file to the destination
cp "$SOURCE" "$DEST/$FILENAME"
