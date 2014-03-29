<# 
.\go.ps1
#>
echo "Copying webpage to Dropbox"
copy "$env:USERPROFILE\documents\github\webpage\index.html" "$env:USERPROFILE\Dropbox\ftp sync\index.html"