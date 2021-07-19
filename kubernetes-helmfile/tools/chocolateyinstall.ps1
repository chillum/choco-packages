$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'kubernetes-helmfile'
    Url            = 'https://github.com/roboll/helmfile/releases/download/v0.139.9/helmfile_windows_386.exe'
    Checksum       = 'F3AFA18CD221F29F1761DBF7157185D3E615BF47E9724705D67807DA3D257564'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/roboll/helmfile/releases/download/v0.139.9/helmfile_windows_amd64.exe'
    Checksum64     = '9FEC0518CD841284F433619F134EA1DB8D0CABD35314F81CCC05A1A153FAFC0E'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\helmfile.exe"
}

Get-ChocolateyWebFile @packageArgs
