$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName   = 'httpstress'
    Url           = 'https://github.com/chillum/httpstress/releases/download/v6.5.3/win32.zip'
    Checksum      = '97FD0A3D135754A88F485378CCC337E55D3806808457C340A219651E804AE13A'
    ChecksumType  = 'sha256'
    UnzipLocation = "$toolsDir"
}

Install-ChocolateyZipPackage @packageArgs
