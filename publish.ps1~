
git add -A
git commit -m "Web page published from Windows box"
git push
echo "Copying webpage to One Drive"
$filelocation = $PSScriptRoot + '\index(1).html'
if (Test-Path -path $filelocation)
{
	Remove-Item index.html
	Rename-Item $filelocation -NewName index.html
}
copy "index.html" "$env:USERPROFILE\OneDrive\Documents\ftp sync\index.html"

