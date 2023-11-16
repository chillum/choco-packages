$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'kubernetes-helmfile'
    Url            = 'https://github.com/helmfile/helmfile/releases/download/v0.158.1/helmfile_0.158.1_windows_386.tar.gz'
    Checksum       = 'EAE3F699B3FD2DF4787D15596BEA7C4CD10C47D0057AE3C191C479724A815ED3'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/helmfile/helmfile/releases/download/v0.158.1/helmfile_0.158.1_windows_amd64.tar.gz'
    Checksum64     = '389594024FE8CAD9C70E58B138ECD28C6392CBCFEF7F44ED4AD6194EF1442B7E'
    ChecksumType64 = 'sha256'
    UnzipLocation = "$toolsDir"
}

Install-ChocolateyZipPackage @packageArgs
$tarFile = Get-ChildItem -File -Path $toolsDir -Filter *.tar
Get-ChocolateyUnzip -fileFullPath $tarFile.FullName -destination $toolsDir
Remove-Item $tarFile.FullName
