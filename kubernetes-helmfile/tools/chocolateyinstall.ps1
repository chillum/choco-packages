$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'kubernetes-helmfile'
    Url            = 'https://github.com/roboll/helmfile/releases/download/v0.130.0/helmfile_windows_386.exe'
    Checksum       = 'EB247254252FEB41F04EC8E99B98A09ABEA939A773B4329B03395925A1583926'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/roboll/helmfile/releases/download/v0.130.0/helmfile_windows_amd64.exe'
    Checksum64     = '0F0AF476D0CFA425D1772D9027D87591D99CBA448AD810303AB437074409FB00'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\helmfile.exe"
}

Get-ChocolateyWebFile @packageArgs
