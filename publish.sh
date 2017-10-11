#!/bin/zsh

$FILE = "/home/jsmith/git/webpage/index(1).html"
if [ -f $FILE ]; then
   rm -f index.html
   mv "$FILE" "/home/jsmith/git/webpage/index.html"
fi
git add -A
git commit -m "Web page published from linux-home box"
git push
echo "Copying to OneDrive from Linux mint"
cp -f index.html "/home/jsmith/OneDrive/Documents/ftp sync"
