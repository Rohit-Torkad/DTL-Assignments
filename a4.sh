#!/bin/bash

# Get the file name from the user
echo "Enter the file name (including the path and extension):"
read file

# Get the file extension
extension="${file##*.}"

# Use a case statement to determine the appropriate command to extract the file
case $extension in
    "zip")
        unzip $file
        ;;
    "tar.gz" | "tar.gz2" | "tgz")
        tar -xvzf $file
        ;;
    "tar")
        tar -xf $file
        ;;
    "bz2")
        bunzip2 $file
        ;;
    "gz")
        gunzip $file
        ;;
    "rar")
        unrar e $file
        ;;
    "Z")
        uncompress $file
        ;;
    "7z")
        7z x $file
        ;;
    *)
        echo "File format not recognized. Unable to extract."
        exit 1
        ;;
esac

