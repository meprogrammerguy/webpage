
git add -A
git commit -m "Web page published from Windows box"
git push
echo "Copying webpage to One Drive"
copy "$env:USERPROFILE\Documents\github\webpage\index.html" "C:\Users\mepro\OneDrive\Documents\ftp sync\index.html"

