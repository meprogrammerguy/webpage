param(
[string]$a
)
<# 
.\go.ps1 "Text Comment for Commit"

	Make sure to have a "My Dropbox" link in the Documents Library
#>
if (!$a)
{ 
	$a = Read-Host 'comment: or (<cr> for generic comment)'
}
if (!$a)
{
	$a = Get-Date
	$a = $a + " page updated."
}
git add -A
git commit -m $a
git push
echo "Copying webpage to Dropbox"
copy "$env:USERPROFILE\Documents\github\webpage\index.html" "$env:USERPROFILE\Documents\My Dropbox\ftp sync\index.html"