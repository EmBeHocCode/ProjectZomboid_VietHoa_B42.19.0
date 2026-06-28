param(
    [string]$GamePath = ""
)

$ErrorActionPreference = "Stop"
$PackageRoot = Split-Path -Parent $MyInvocation.MyCommand.Path

$running = Get-Process -ErrorAction SilentlyContinue |
    Where-Object { $_.ProcessName -match "^(ProjectZomboid|ProjectZomboid32|ProjectZomboid64|java|javaw)$" -and ($_.MainWindowTitle -match "Project Zomboid" -or $_.Path -match "ProjectZomboid") }
if ($running) {
    Write-Host "Project Zomboid dang chay. Hay thoat han game truoc khi cai Viet hoa."
    Write-Host "Ly do: game cache font/texture; copy font khi game dang mo co the lam chu bi vo/nhieu nhu anh."
    Write-Host "Thoat game xong chay lai installer."
    exit 2
}

if ([string]::IsNullOrWhiteSpace($GamePath)) {
    $candidates = @(
        (Get-Location).Path,
        "C:\Program Files (x86)\Steam\steamapps\common\ProjectZomboid",
        "C:\Program Files\Steam\steamapps\common\ProjectZomboid"
    )
    foreach ($candidate in $candidates) {
        if (Test-Path (Join-Path $candidate "ProjectZomboid64.exe")) {
            $GamePath = $candidate
            break
        }
    }
}

if ([string]::IsNullOrWhiteSpace($GamePath) -or -not (Test-Path $GamePath)) {
    Write-Host "Khong tim thay thu muc game."
    Write-Host 'Hay chay: powershell -ExecutionPolicy Bypass -File .\Install-Vietnamese.ps1 -GamePath "C:\Duong\Dan\ProjectZomboid"'
    exit 1
}

$sourceMedia = Join-Path $PackageRoot "media"
$targetMedia = Join-Path $GamePath "media"
if (-not (Test-Path $sourceMedia)) {
    throw "Thieu thu muc media trong goi Viet hoa."
}

$backupRoot = Join-Path $env:USERPROFILE ("Zomboid\VI_Font_Backup_" + (Get-Date -Format "yyyyMMdd_HHmmss"))
New-Item -ItemType Directory -Force -Path $backupRoot | Out-Null

$fontDir = Join-Path $GamePath "media\fonts"
if (Test-Path $fontDir) {
    Get-ChildItem -Path $fontDir -Filter "zomboidNormal*" -File -ErrorAction SilentlyContinue | ForEach-Object {
        Copy-Item -LiteralPath $_.FullName -Destination $backupRoot -Force
    }
}

Copy-Item -Path (Join-Path $sourceMedia "*") -Destination $targetMedia -Recurse -Force

$optionsDir = Join-Path $env:USERPROFILE "Zomboid"
$optionsPath = Join-Path $optionsDir "options.ini"
New-Item -ItemType Directory -Force -Path $optionsDir | Out-Null

if (Test-Path $optionsPath) {
    $lines = Get-Content -LiteralPath $optionsPath
    $found = $false
    $lines = $lines | ForEach-Object {
        if ($_ -match "^language=") {
            $found = $true
            "language=VI"
        } else {
            $_
        }
    }
    if (-not $found) {
        $lines += "language=VI"
    }
    Set-Content -LiteralPath $optionsPath -Value $lines -Encoding UTF8
} else {
    Set-Content -LiteralPath $optionsPath -Value @("language=VI") -Encoding UTF8
}

Write-Host "Da cai Viet hoa vao: $GamePath"
Write-Host "Da dat language=VI trong: $optionsPath"
Write-Host "Backup font cu o: $backupRoot"
Write-Host "Hay mo game lai tu dau. Khong cai goi nay khi game dang chay."
