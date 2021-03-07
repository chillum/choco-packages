$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'kubernetes-helmfile'
    Url            = 'https://github.com/roboll/helmfile/releases/download/v0.138.6/helmfile_windows_386.exe'
    Checksum       = 'DA0C19F855FC0582CEF82C22DBFE6FA387CD4248765AC6669BA455A4207E0359'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/roboll/helmfile/releases/download/v0.138.6/helmfile_windows_amd64.exe'
    Checksum64     = '29E95F21C72507D34A4362680085016DD867F3AD4F01946AD055149962FE54D7'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\helmfile.exe"
}

Get-ChocolateyWebFile @packageArgs
