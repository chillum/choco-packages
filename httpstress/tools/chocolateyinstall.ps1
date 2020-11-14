$packageArgs = @{
    PackageName   = 'httpstress'
    Url           = 'https://github.com/chillum/httpstress/releases/download/v6.5.2/win32.zip'
    Checksum      = 'C9A1CF3AC54D90101398906C169736EC7283A84008AB57C22CEAFA46523345DF'
    ChecksumType  = 'sha256'
    UnzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
