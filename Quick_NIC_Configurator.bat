@ECHO off
cls
:start
title Quick NIC Configurator
color 8e
ECHO --------------------------
ECHO   Quick NIC Configurator
ECHO --------------------------
ECHO.
ECHO.
ECHO This tool must be ran as ADMINISTRATOR!
ECHO.
ECHO.
ECHO Created by Chris Brooks
ECHO https://github.com/GsynthChris
ECHO.
ECHO.
ECHO d. Set to DHCP 
ECHO r. Release/Renew IP
ECHO h. Help
ECHO 1. ENTER SITE NAME
ECHO 2. ENTER SITE NAME
ECHO 3. ENTER SITE NAME
ECHO 4. ENTER SITE NAME
ECHO 5. ENTER SITE NAME
ECHO 6. ENTER SITE NAME
ECHO 7. ENTER SITE NAME
ECHO 8. ENTER SITE NAME
ECHO 9. ENTER SITE NAME
ECHO a. ENTER SITE NAME
ECHO b. ENTER SITE NAME

set choice=
set /p choice=Enter number for network you are trying to connect to:
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='d' goto dhcp
if '%choice%'=='r' goto renew
if '%choice%'=='h' goto help
if '%choice%'=='1' goto site1
if '%choice%'=='2' goto site2
if '%choice%'=='3' goto site3
if '%choice%'=='4' goto site4
if '%choice%'=='5' goto site5
if '%choice%'=='6' goto site6
if '%choice%'=='7' goto site7
if '%choice%'=='8' goto site8
if '%choice%'=='9' goto site9
if '%choice%'=='a' goto sitea
if '%choice%'=='b' goto siteb
ECHO "%choice%" is not valid, try again
goto start

:dhcp
ECHO Setting NIC to DHCP
netsh interface ip set address "Ethernet" dhcp
netsh interface ip set dns "Ethernet" dhcp
goto end

:renew
ECHO Releasing IP and obtaining new DHCP IP
ipconfig /release "Ethernet"
ipconfig /renew "Ethernet"
goto end

:site1
ECHO Setting NIC to 192.168.1.9 for ADD SITE NAME HERE 
netsh interface ip set address "Ethernet" static 192.168.1.9 255.255.255.0 192.168.1.254 1
netsh interface ip set dns "Ethernet" static 192.168.1.1
goto end

:site2
ECHO Setting NIC to 192.168.1.9 for ADD SITE NAME HERE 
netsh interface ip set address "Ethernet" static 192.168.1.9 255.255.255.0 192.168.1.254 1
netsh interface ip set dns "Ethernet" static 192.168.1.1
goto end

:site3
ECHO Setting NIC to 192.168.1.9 for ADD SITE NAME HERE 
netsh interface ip set address "Ethernet" static 192.168.1.9 255.255.255.0 192.168.1.254 1
netsh interface ip set dns "Ethernet" static 192.168.1.1
goto end

:site4
ECHO Setting NIC to 192.168.1.9 for ADD SITE NAME HERE 
netsh interface ip set address "Ethernet" static 192.168.1.9 255.255.255.0 192.168.1.254 1
netsh interface ip set dns "Ethernet" static 192.168.1.1
goto end

:site5
ECHO Setting NIC to 192.168.1.9 for ADD SITE NAME HERE 
netsh interface ip set address "Ethernet" static 192.168.1.9 255.255.255.0 192.168.1.254 1
netsh interface ip set dns "Ethernet" static 192.168.1.1
goto end

:site6
ECHO Setting NIC to 192.168.1.9 for ADD SITE NAME HERE 
netsh interface ip set address "Ethernet" static 192.168.1.9 255.255.255.0 192.168.1.254 1
netsh interface ip set dns "Ethernet" static 192.168.1.1
goto end

:site7
ECHO Setting NIC to 192.168.1.9 for ADD SITE NAME HERE 
netsh interface ip set address "Ethernet" static 192.168.1.9 255.255.255.0 192.168.1.254 1
netsh interface ip set dns "Ethernet" static 192.168.1.1
goto end

:site8
ECHO Setting NIC to 192.168.1.9 for ADD SITE NAME HERE 
netsh interface ip set address "Ethernet" static 192.168.1.9 255.255.255.0 192.168.1.254 1
netsh interface ip set dns "Ethernet" static 192.168.1.1
goto end

:site9
ECHO Setting NIC to 192.168.1.9 for ADD SITE NAME HERE 
netsh interface ip set address "Ethernet" static 192.168.1.9 255.255.255.0 192.168.1.254 1
netsh interface ip set dns "Ethernet" static 192.168.1.1
goto end

:sitea
ECHO Setting NIC to 192.168.1.9 for ADD SITE NAME HERE 
netsh interface ip set address "Ethernet" static 192.168.1.9 255.255.255.0 192.168.1.254 1
netsh interface ip set dns "Ethernet" static 192.168.1.1
goto end

:siteb
ECHO Setting NIC to 192.168.1.9 for ADD SITE NAME HERE 
netsh interface ip set address "Ethernet" static 192.168.1.9 255.255.255.0 192.168.1.254 1
netsh interface ip set dns "Ethernet" static 192.168.1.1
goto end

:help
ECHO To set this script up for yourself make sure you find the actual name of your NIC.
ECHO Most PCs should just be "Ethernet" but double check by going to control panel.
ECHO Expand as needed but if you need more than 1-0 and a-z, use 2 digit identifiers 01, 02, 03...
ECHO If you need help or have any ideas of thing to add or want to share your batch script with me
ECHO Send me a message on Github at https://github.com/GsynthChris
goto end

:end
set /p temp=Press ENTER to Exit