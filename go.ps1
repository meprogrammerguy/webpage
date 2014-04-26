param(
[string]$a
)
<# 
.\go.ps1 "Text Comment for Commit"

	Make sure to have Dropbox folder named as "My Dropbox"
	mklink /D /J "C:\Users\Admin\My Dropbox" "C:\Users\Admin\Dropbox"
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
copy "$env:USERPROFILE\Documents\github\webpage\index.html" "$env:USERPROFILE\My Dropbox\ftp sync\index.html"