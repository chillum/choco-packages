$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'kubernetes-helmfile'
    Url            = 'https://github.com/roboll/helmfile/releases/download/v0.142.0/helmfile_windows_386.exe'
    Checksum       = 'BC24147E86DA7DBC5932F4843DF378AD2DCD533465C12F73D382A28D36DE0745'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/roboll/helmfile/releases/download/v0.142.0/helmfile_windows_amd64.exe'
    Checksum64     = '87F8CE227E4F9E7AD127B73500903ABCFF89F8012E755F9C65EE43D2135C07A1'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\helmfile.exe"
}

Get-ChocolateyWebFile @packageArgs
