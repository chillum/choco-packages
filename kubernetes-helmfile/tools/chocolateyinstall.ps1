$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'kubernetes-helmfile'
    Url            = 'https://github.com/helmfile/helmfile/releases/download/v0.148.1/helmfile_0.148.1_windows_386.tar.gz'
    Checksum       = '96BD72F05426459C09F9D3E949CF6E3A142D2EFADCB680D6B43333D4D979A410'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/helmfile/helmfile/releases/download/v0.148.1/helmfile_0.148.1_windows_amd64.tar.gz'
    Checksum64     = '23146C13DEBC5E62E2A6949AD231E190013906D31F7839F2A0DD0D8A9400A76E'
    ChecksumType64 = 'sha256'
    UnzipLocation = "$toolsDir"
}

Install-ChocolateyZipPackage @packageArgs
$tarFile = Get-ChildItem -File -Path $toolsDir -Filter *.tar
Get-ChocolateyUnzip -fileFullPath $tarFile.FullName -destination $toolsDir
Remove-Item $tarFile.FullName
