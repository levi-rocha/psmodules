$ps_modules = 'D:\cs\ps-modules\'

# easier way to import modules
function import { Import-Module ($ps_modules + 'l_' + $args[0] + '.psm1') }

# shortcut for editing the profile
function prof { vim ($pshome + '\profile.ps1') }

# install chocolatey and define require function used by modules
$choco_installed = $false
if (Get-Command choco.exe -ErrorAction SilentlyContinue) {
	$choco_installed = $true
} else {
	Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

function require { 
	choco install $args[0] -y *>$null
}

require vim
