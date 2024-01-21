iex "& {$(irm get.scoop.sh)} -RunAsAdmin"
Get-ChildItem ".\bucket" -Filter *.json | Sort |
Foreach-Object {
    scoop install $_.FullName
    scoop uninstall $_.Basename
}
