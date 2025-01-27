#!/bin/bash

# Source and destination directories
SOURCE_DIR="./migrations/"
DEST_DIR="./flyway/"

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Loop through each SQL file in the source directory
for FILE in "$SOURCE_DIR"/*.sql; do
    # Extract the filename without the path
    BASENAME=$(basename "$FILE")
    
    # Split the filename into parts
    PREFIX=$(echo "$BASENAME" | cut -d'_' -f1)
    SUFFIX=$(echo "$BASENAME" | cut -d'_' -f2-)
    
    # Create the new filename
    NEW_FILENAME="V${PREFIX}__${SUFFIX}"
    
    # Copy the file to the destination directory with the new name
    cp "$FILE" "$DEST_DIR/$NEW_FILENAME"
    
    echo "Copied $BASENAME to $NEW_FILENAME"
done

echo "All files processed!"
