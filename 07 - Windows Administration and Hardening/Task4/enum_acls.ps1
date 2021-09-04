$directory = Get-ChildItem -name
foreach ($item in $directory) {
Get-Acl $item
}