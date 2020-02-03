#!/bin/bash


#backup chrome
cd /Users/$USER/Library/Application\ Support/Google/Chrome/
for d in Default Profile* 
do 
echo "Processing $d dir.."
7z a "$d" "$d/"
done



