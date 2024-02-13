@echo off
color B
 
title Co-Op
 
:greeting
cls
 

ECHO Co-Op on top

 
 
set /p IP=Enter IP To Ping:
:top
PING -n 1 %IP% | FIND "TTL="
title :: Pinging: %IP% ::
IF ERRORLEVEL 1 (echo RIP from Co-Op!)
set /a num=(%Random%%%9)+1
color %num%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top