param (
    [string]$extras
)

Write-Host "Installing virtual environment... " -NoNewline

& python -m venv "$dir\venv"

Write-Host "done." -Foreground Green

Write-Host "Installing dependencies... " -NoNewline

& "$dir\venv\Scripts\pip.exe" install "$dir$extras" -qq

Write-Host "done." -Foreground Green
