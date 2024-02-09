Write-Host "Install Scoop (https://scoop.sh)"
if (Get-Command -ErrorAction SilentlyContinue scoop) {
    Write-Host "Scoop already installed"
} else {
    # https://github.com/ScoopInstaller/Install#for-admin
    Invoke-Expression "& {$(Invoke-RestMethod `"https://get.scoop.sh`")} -RunAsAdmin"
}

Write-Host "Test all manifests"
Get-ChildItem "${PSScriptRoot}/bucket" -Filter *.json | Sort | Foreach-Object {
    Write-Host "Install $($_.FullName)"
    scoop install $_.FullName
    Write-Host "Uninstall $($_.Basename)"
    scoop uninstall $_.Basename
}
