#!/bin/bash

git add -A
git commit -m "Web page updated from Mint Linux box"
git push
echo "Copying webpage to One Drive"
cp index.html "/home/jsmith/OneDrive/Documents/ftp sync/"
