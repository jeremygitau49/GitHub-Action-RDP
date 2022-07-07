@echo off
net config server /srvcomment:"Windows Azure VM" >nul
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F >nul
net user Admin 1234@Pass /add >nul
net localgroup administrators Admin /add >nul
net user Admin /active:yes >nul
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant Admin:F >nul
ICACLS C:\Windows\installer /grant Admin:F >nul
