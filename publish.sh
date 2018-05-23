#!/bin/bash

git add -A
git commit -m "Web page published from linux-home box"
git push
echo "Cleaning up old files on OneDrive in LocalWeb"
rm -rf "/home/jsmith/OneDrive/Documents/LocalWeb/*"
echo "Copying to OneDrive from Linux ubuntu"
ls -R > files.txt
cp -f "files.txt" "/home/jsmith/OneDrive/Documents/LocalWeb"
cp -f "index.html" "/home/jsmith/OneDrive/Documents/LocalWeb"
cp -r "templates/" "/home/jsmith/OneDrive/Documents/LocalWeb"
cp -r "style/" "/home/jsmith/OneDrive/Documents/LocalWeb"
