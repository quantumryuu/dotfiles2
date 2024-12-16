#Functions
Function Get-Ips {
    $Publicip = (Curl Icanhazip.Com).Content
    $Localip = (Get-Netipaddress | Where-Object { $_.Addressstate -Eq "Preferred" -And $_.Validlifetime -Lt "24:00:00" }).Ipaddress
    Write-Host "Public Ip: $Publicip `Rlocal Ip: $Localip"
}

Function Reload {
    . $Profile
}

Function .. {
    Set-Location ..
}
Function ... {
    Set-Location ../..
}
Function .... {
    Set-Location ../../..
}
Function ..... {
    Set-Location ../../../..
}
Function ...... {
    Set-Location ../../../../..
}

# Aliases
Set-Alias -Name Q -Value "Exit"
Set-Alias -Name C -Value "Clear"
Set-Alias -Name Ip -Value "Get-Ips"
Set-Alias -Name Dotfiles -Value Update-Dotfiles
Set-Alias -Name tmep -Value Temp
Set-Alias -Name system -Value Start-PowershellSystem


#Run Functions
Import-Module Terminal-Icons
Import-Module -Name Psreadline
Set-Psreadlineoption -Historynoduplicates
Set-Psreadlinekeyhandler -Key Tab -Function Menucomplete
Set-Psreadlineoption -Predictionsource History
#Set-Psreadlinekeyhandler -Key Uparrow -Function Historysearchbackward
#Set-Psreadlinekeyhandler -Key Downarrow -Function Historysearchforward
Clear

Invoke-Expression (&starship init powershell)
function Start-PowershellSystem {
C:\Software\PSTools\PsExec64.exe -s -i powershell.exe -accepteula
}
function Start-PowershellSystem {
C:\Software\PSTools\PsExec64.exe -s -i powershell.exe -accepteula
}
