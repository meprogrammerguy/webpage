
git add -A
git commit -m "Web page published from Windows box"
git push
echo "Copying webpage to One Drive"
if (Test-Path index(1).html)
{
	Remove-Item index.html
	Rename-Item index(1).html -NewName index.html
}
copy "index.html" "$env:USERPROFILE\OneDrive\Documents\ftp sync\index.html"

