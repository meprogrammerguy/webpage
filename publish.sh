#!/bin/bash

git add -A
git commit -m "Web page published from linux-home box"
git push
echo "Copying to OneDrive from Linux ubuntu"
cp -f "index.html" "/home/jsmith/OneDrive/Documents/LocalWeb"
