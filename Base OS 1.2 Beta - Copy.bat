@echo off
color 09
title Base OS 1.2  Beta

:Login
cls
if exist programbase.dll goto login
if not exist programbase.dll goto register

:register
echo Register
echo.
echo Please fill in the blanks.
echo.
Set usrname=
set /p usrname=Username: 
Set passw=
set /p passw=Password: 
echo %usrname%>> programdata.dll
echo %passw%>> programbase.dll
cls
goto login

:login
:begin
set usr=
set /p usr=Enter your username: 
if {%usr%}=={} goto :begin
set authenticated=
for /f "tokens=*" %%a in (programdata.dll) do (
    if {%%a}=={%usr%} set authenticated=true
)

if not defined authenticated (echo Invalid Username & goto :begin)

:passwo
set pass=
set /p pass=Enter your password: 
if {%pass%}=={} goto :begin
set authenticated=
for /f "tokens=*" %%a in (programbase.dll) do (
    if {%%a}=={%pass%} set authenticated=true
)
if not defined authenticated (echo Invalid password & goto :begin)

:user-Admin

:user-Admin
cls
echo Welcome back, Admin! Here are your tools.
echo Calculator (1)
echo Settings (2)
echo Log out (3)
set /p commandAdmin1=Enter tool selection number... 
if %commandAdmin1%==1 goto :calc-Admin
if %commandAdmin1%==2 goto :settings-Admin
if %commandAdmin1%==3 goto :logout-Admin
cls

:calc-Admin
cls
calc
echo Calculator opened on Windows. Type Back to get to your tools.
set /p commandcalcAdmin1=Enter keyword...  
if %commandcalcAdmin1%==Back goto :user-Admin
cls

:settings-Admin
cls
echo Sorry, but we haven't added lots of features yet! We're on it!
echo To reset username and password (1)
echo To go back type (Back)
set /p commandsettingsAdmin1=Enter keyword... 
if %commandsettingsAdmin1%==Back goto :user-Admin
cls

:logout-Admin
cls
echo Log out (1)
echo Log out and close Base (2)
echo Shut down computer (3)
echo Reboot computer (4)
echo Cancel (5)
set /p commandlogoutAdmin1=Enter tool selection number... 
if %commandlogoutAdmin1%==1 goto :Login
if %commandlogoutAdmin1%==2 exit
if %commandlogoutAdmin1%==3 shutdown -s -t 1
if %commandlogoutAdmin1%==4 shutdown -r -t 1
if %commandlogoutAdmin1%==5 goto :user-Admin
cls