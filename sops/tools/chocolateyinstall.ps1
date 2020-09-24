$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName    = 'sops'
  Url64bit       = 'https://github.com/mozilla/sops/releases/download/v3.6.1/sops-v3.6.1.exe'
  Checksum64     = 'AAB1693A8A8F0A188C31391406B637C19CE937134C6E7821C6F25CD2B47E6A2A'
  ChecksumType64 = 'sha256'
  FileFullPath   = "$toolsDir\sops.exe"
}

Get-ChocolateyWebFile @packageArgs
