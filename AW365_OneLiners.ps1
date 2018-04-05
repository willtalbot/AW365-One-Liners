#   Get List of trusted applications and the port used
Get-CsTrustedApplication | select identity, Port | ft -AutoSize
#****************************************************************************************
#   Get List of Trusterdapplications filtered by SIP address
Get-CsTrustedApplicationEndpoint -Filter {sipaddress -like "*UCC_*"} | select Sipaddress, DisplayName, LineURI, VoicePolicy | FT -AutoSize