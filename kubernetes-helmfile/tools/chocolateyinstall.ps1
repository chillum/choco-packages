$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'kubernetes-helmfile'
    Url            = 'https://github.com/helmfile/helmfile/releases/download/v0.147.0/helmfile_0.147.0_windows_386.tar.gz'
    Checksum       = '7C641B3C9DD9356553A5C122580B02D9C495536AE0CA23F5E43754A5D09F6A1B'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/helmfile/helmfile/releases/download/v0.147.0/helmfile_0.147.0_windows_amd64.tar.gz'
    Checksum64     = '17023A515EC91DC8394A72E942CD033AF57540EEFF47A13833ED95DAFD95AE37'
    ChecksumType64 = 'sha256'
    UnzipLocation = "$toolsDir"
}

Install-ChocolateyZipPackage @packageArgs
$tarFile = Get-ChildItem -File -Path $toolsDir -Filter *.tar
Get-ChocolateyUnzip -fileFullPath $tarFile.FullName -destination $toolsDir
Remove-Item $tarFile.FullName
