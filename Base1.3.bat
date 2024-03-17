@echo off
color 09
title Base OS - Fastbooting(C)...

:Login
cls
title Base OS is loading the local database. Please wait. This shouldn't take long.
if exist databaseU.dll goto login
if not exist databaseU.dll goto register
cls

:register
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

:login
title Base OS - Login
cls
set usr=
set /p usr=Enter your username: 
if {%usr%}=={} goto :login
set authenticated=
for /f "tokens=*" %%a in (databaseU.dll) do (
    if {%%a}=={%usr%} set authenticated=true
)

if not defined authenticated (echo Invalid username. & goto :login)
cls

:passwo
cls
title Base OS - Login
set pass=
set /p pass=Enter your password: 
if {%pass%}=={} goto :login
set authenticated=
for /f "tokens=*" %%a in (databaseP.dll) do (
    if {%%a}=={%pass%} set authenticated=true
)
if not defined authenticated (echo Invalid password. & goto :login)
cls

:user
cls
title Base OS - Tool Select
echo Welcome! Here are your tools.
echo Calculator (1)
echo Settings (2)
echo Terminal (3)
echo Log out (4)
set /p commandAdmin1=Enter tool selection number... 
if %commandAdmin1%==1 goto :calc
if %commandAdmin1%==2 goto :settings
if %commandAdmin1%==3 goto :terminal
if %commandAdmin1%==4 goto :logout
cls

:calc
cls
title Base OS - Calculator
calc
echo Calculator opened on Windows. Type Back to get to your tools.
set /p commandcalcAdmin1=Enter keyword...  
if %commandcalcAdmin1%==Back goto :user
cls

:settings
cls
title Base OS - Settings
echo Sorry, but we haven't added lots of features yet! We're on it!
echo /!\ Reset username and password (1)
echo Back (2)
set /p commandsettingsAdmin1=Enter keyword... 
if %commandsettingsAdmin1%==2 goto :user
if %commandsettingsAdmin1%==1 goto :user-reset
cls

:terminal
cls
title Base OS - Terminal
echo Type Base1.3.bat to return to the OS.
cmd
cls

:logout
cls
title Log out of Base OS
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
if %commandlogoutAdmin1%==5 goto :user
cls


:user-reset
cls
title Reset Base OS
if exist databaseU.dll del databaseU.dll
if exist databaseP.dll del databaseP.dll
echo Username and password reset done.
echo Type start to register again.
goto login:
cls