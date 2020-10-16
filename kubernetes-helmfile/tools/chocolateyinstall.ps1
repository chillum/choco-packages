$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'kubernetes-helmfile'
    Url            = 'https://github.com/roboll/helmfile/releases/download/v0.131.0/helmfile_windows_386.exe'
    Checksum       = '13E54060844DE7E06401206334EFC33063621DB7A37BBC6520F72790AF1E0817'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/roboll/helmfile/releases/download/v0.131.0/helmfile_windows_amd64.exe'
    Checksum64     = 'B985EAF9E51B3EC5B76500232ADC3D24A11BB19E149DA348A15D24E595976292'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\helmfile.exe"
}

Get-ChocolateyWebFile @packageArgs
