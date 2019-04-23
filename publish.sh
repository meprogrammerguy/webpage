#!/bin/bash

git add -A
git commit -m "Web page published from linux-home box"
git push
echo "Cleaning up old files on OneDrive in LocalWeb"
rm -rf "/home/jsmith/OneDrive/Documents/LocalWeb/*"
echo "Copying to OneDrive from Linux ubuntu"
ls ./templates -R > templates.txt
sed '1d' templates.txt > tmpfile; mv tmpfile templates.txt
ls ./style -R > style.txt
sed '1d' style.txt > tmpfile; mv tmpfile style.txt
cp -f "templates.txt" "/home/jsmith/OneDrive/Documents/LocalWeb"
cp -f "style.txt" "/home/jsmith/OneDrive/Documents/LocalWeb"
cp -f "index.html" "/home/jsmith/OneDrive/Documents/LocalWeb"
cp -r "templates/" "/home/jsmith/OneDrive/Documents/LocalWeb"
cp -r "style/" "/home/jsmith/OneDrive/Documents/LocalWeb"
rm style.txt
rm templates.txt
