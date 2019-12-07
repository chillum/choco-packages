$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName    = 'sops'
  Url64bit       = 'https://github.com/mozilla/sops/releases/download/v3.5.0/sops-v3.5.0.exe'
  Checksum64     = '326F00573D01979D231FF07CBFDADB5F353A87998BA4144EC7C72F53D377AF13'
  ChecksumType64 = 'sha256'
  FileFullPath   = "$toolsDir\sops.exe"
}

Get-ChocolateyWebFile @packageArgs
