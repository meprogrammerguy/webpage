param(
[string]$a
)
<# 
.\go.ps1 "Text Comment for Commit"
#>
if (!$a)
{ 
	$a = Read-Host 'What is your commit comment string?'
}
if (!$a)
{
	$a = "Daily webpage update"
}
git add -A
git commit -m $a
git push
echo "Copying webpage to Dropbox"
copy "$env:USERPROFILE\Documents\github\webpage\index.html" "$env:USERPROFILE\Documents\My Dropbox\ftp sync\index.html"