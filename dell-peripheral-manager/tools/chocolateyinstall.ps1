$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.dell.com/FOLDER11877563M/1/DPeM_2CXG5_1.7.6_WN64_A00.exe'

$packageArgs = @{
  packageName   = 'dell-peripheral-manager'
  fileType      = 'exe'
  url64bit      = $url64
  softwareName  = 'Dell Peripheral Manager'
  checksum64    = '736287190DBF347D5C6584F903D3560D3580E8818D876602382A99D31BBEB0A0'
  checksumType64= 'sha256'
  silentArgs    = '/S'
  options       = @{ Headers = @{ 'User-Agent' = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0' } }
}

Install-ChocolateyPackage @packageArgs

















