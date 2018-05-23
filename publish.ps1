git add -A
git commit -m "Web page published from Windows box"
git push
echo "Copying webpage to One Drive"
copy "index.html" "$env:USERPROFILE\OneDrive\Documents\LocalWeb\index.html"

