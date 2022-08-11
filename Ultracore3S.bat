@echo off
color 09

:boot
cls
echo Welcome to Ultracore 3S. Type !start to start or run an alternative command.
set /p commandboot1=Enter command... 
if %commandboot1%==!start goto :ultracore-panel
cls

:ultracore-panel
cls
echo Select a version to test. Type version number to select. Use boot command to exit UC panel.
echo Base 1.3
set /p commanducp1=Enter command... 
if %commanducp1%==!boot goto :boot
if %commanducp1%==1.3 goto :one-three
cls

// Start of Base 1.3

:one-three
color 09
title Base OS - Fastbooting(C)...

:Login-13
cls
title Base OS is loading the local database. Please wait. This shouldn't take long.
if exist databaseU.dll goto login
if not exist databaseU.dll goto register
cls

:register-13
cls
title Base OS - Registration
echo Registration - Base couldn't find an existing database, so we're creating a new one.
echo.
echo Please fill in the blanks.
echo.
Set usrname=
set /p usrname=Username: 
Set passw=
set /p passw=Password: 
echo %usrname%>> databaseU.dll
echo %passw%>> databaseP.dll
cls
goto login

:login-13
title Base OS - Login
cls
set usr=
set /p usr=Enter your username: 
if {%usr%}=={} goto :login-13
set authenticated=
for /f "tokens=*" %%a in (databaseU.dll) do (
    if {%%a}=={%usr%} set authenticated=true
)

if not defined authenticated (echo Invalid username. & goto :login-13)
cls

:passwo-13
cls
title Base OS - Login
set pass=
set /p pass=Enter your password: 
if {%pass%}=={} goto :login-13
set authenticated=
for /f "tokens=*" %%a in (databaseP.dll) do (
    if {%%a}=={%pass%} set authenticated=true
)
if not defined authenticated (echo Invalid password. & goto :login-13)
cls

:user-13
cls
title Base OS - Tool Select
echo Welcome! Here are your tools.
echo Calculator (1)
echo Settings (2)
echo Terminal (3)
echo Log out (4)
set /p commandAdmin1=Enter tool selection number... 
if %commandAdmin1%==1 goto :calc-13
if %commandAdmin1%==2 goto :settings-13
if %commandAdmin1%==3 goto :terminal-13
if %commandAdmin1%==4 goto :logout-13
cls

:calc-13
cls
title Base OS - Calculator
calc
echo Calculator opened on Windows. Type Back to get to your tools.
set /p commandcalcAdmin1=Enter keyword...  
if %commandcalcAdmin1%==Back goto :user-13
cls

:settings-13
cls
title Base OS - Settings
echo Sorry, but we haven't added lots of features yet! We're on it!
echo /!\ Reset username and password (1)
echo Back (2)
set /p commandsettingsAdmin1=Enter keyword... 
if %commandsettingsAdmin1%==2 goto :user-13
if %commandsettingsAdmin1%==1 goto :user-reset-13
cls

:terminal-13
cls
title Base OS - Terminal
echo Type Base1.3.bat to return to the OS.
cmd
cls

:logout-13
cls
title Log out of Base OS
echo Log out (1)
echo Log out and close Base (2)
echo Shut down computer (3)
echo Reboot computer (4)
echo Cancel (5)
set /p commandlogoutAdmin1=Enter tool selection number... 
if %commandlogoutAdmin1%==1 goto :Login-13
if %commandlogoutAdmin1%==2 exit
if %commandlogoutAdmin1%==3 shutdown -s -t 1
if %commandlogoutAdmin1%==4 shutdown -r -t 1
if %commandlogoutAdmin1%==5 goto :user-13
cls


:user-reset-13
cls
title Reset Base OS
if exist databaseU.dll del databaseU.dll
if exist databaseP.dll del databaseP.dll
echo Username and password reset done.
echo Type start to register again.
set /p commandsettingsReset=Enter keyword...
if %commandsettingsReset%==start goto :register-13
cls

// End of Base 1.3
