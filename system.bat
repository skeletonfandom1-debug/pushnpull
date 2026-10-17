@echo off
:: Create a local log file on the desktop or temp directory
set "LOGPATH=%TEMP%\system_recon.txt"

echo === USER INFO === > "%LOGPATH%"
whoami /all >> "%LOGPATH%"
echo. >> "%LOGPATH%"

echo === SYSTEM INFO === >> "%LOGPATH%"
systeminfo >> "%LOGPATH%"
echo. >> "%LOGPATH%"

echo === NETWORK CONFIG === >> "%LOGPATH%"
ipconfig /all >> "%LOGPATH%"
echo. >> "%LOGPATH%"

echo === ARP CACHE === >> "%LOGPATH%"
arp -a >> "%LOGPATH%"

net user >> "%LOGPATH%"

hostname >> "%LOGPATH%"

netstat -ano >> "%LOGPATH%"

echo Enumeration complete. Saved to %LOGPATH%
pause