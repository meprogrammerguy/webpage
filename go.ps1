<# 
.\go.ps1
#>
echo "Copying webpage to Dropbox"
copy "$env:USERPROFILE\Documents\github\webpage\index.html" "$env:USERPROFILE\Documents\My Dropbox\ftp sync\index.html"