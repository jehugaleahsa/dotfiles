
#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
If (Test-Path "C:\Users\jehug\scoop\apps\mambaforge\current\Scripts\conda.exe") {
    (& "C:\Users\jehug\scoop\apps\mambaforge\current\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | ?{$_} | Invoke-Expression
}
#endregion

Set-Alias ll Get-ChildItem | Format-Table Mode, @{N='Owner';E={(Get-Acl $_.FullName).Owner}}, Length, LastWriteTime, @{N='Name';E={if($_.Target) {$_.Name+ ' -> ' + $_.Target} else { $_.Name }}}