$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'yq'
    Url            = 'https://github.com/mikefarah/yq/releases/download/3.3.0/yq_windows_386.exe'
    Checksum       = 'B563F69FDC8078F4F8FEB95907D868BEAF945EFBCEE8BA2A601A220A20BF491A'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/mikefarah/yq/releases/download/3.3.0/yq_windows_amd64.exe'
    Checksum64     = '9137DD05FFE568EA8438411E426ED039CFBFB317339F335C778CB53919F28277'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\yq.exe"
}

Get-ChocolateyWebFile @packageArgs
