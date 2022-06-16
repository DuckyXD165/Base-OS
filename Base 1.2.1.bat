@echo off
color 09
title Base OS 1.3U

:uselect
echo Pick user below -
echo User 1 (1)
echo User 2 (2)
set /p uselect-input=User selection: 
if set /p %uselect-input%==1 goto Login1
if set /p %uselect-input%==2 goto Login2

:Login1
cls
title Base OS is loading your local databases. Please wait. This should only take 2 seconds.
if exist databaseU1.dll goto login1
if not exist databaseU1.dll goto register1
cls

:register1
cls
title Base OS 1.3U Registration (User 1)
echo Registration
echo.
echo Please add your credentials here:
echo.
Set usrname=
set /p usrname=Username: 
Set passw=
set /p passw=Password: 
echo %usrname%>> databaseU1.dll
echo %passw%>> databaseP1.dll
cls
goto login1

:login1
title Base OS 1.3U Login (Username | User 1)
cls
set usr=
set /p usr=Enter your username: 
if {%usr%}=={} goto :login1
set authenticated=
for /f "tokens=*" %%a in (databaseU1.dll) do (
    if {%%a}=={%usr%} set authenticated=true
)

if not defined authenticated (echo Invalid username. & goto :login1)
cls

:passwo1
cls
title Base OS 1.3U Login (Password | User 1)
set pass=
set /p pass=Enter your password: 
if {%pass%}=={} goto :login1
set authenticated=
for /f "tokens=*" %%a in (databaseP1.dll) do (
    if {%%a}=={%pass%} set authenticated=true
)
if not defined authenticated (echo Invalid password. & goto :login1)
cls

:user1
cls
title Base OS 1.3U Tool Select
echo Welcome back, User 1! Here are your tools.
echo Calculator (1)
echo Settings (2)
echo Terminal (3)
echo Log out (4)
set /p commandAdmin1=Enter tool selection number... 
if %commandAdmin1%==1 goto :calc1
if %commandAdmin1%==2 goto :settings1
if %commandAdmin1%==3 goto :terminal1
if %commandAdmin1%==4 goto :logout
cls

:calc1
cls
title Base OS 1.3U Calculator
calc
echo Calculator opened on Windows. Type Back to get to your tools.
set /p commandcalcAdmin1=Enter keyword...  
if %commandcalcAdmin1%==Back goto :user
cls

:settings1
cls
title Base OS 1.3U Settings
echo Sorry, but we haven't added lots of features yet! We're on it!
echo /!\ Reset username and password (1)
echo Back (2)
set /p commandsettingsAdmin1=Enter keyword... 
if %commandsettingsAdmin1%==2 goto :user1
if %commandsettingsAdmin1%==1 goto :user-reset1
cls

:terminal1
cls
title Base OS 1.3U Terminal
echo Type Base1.3U.bat to return to the OS.
cmd
cls

:logout1
cls
title Log out of Base OS
echo Log out (1)
echo Log out and close Base (2)
echo Shut down computer (3)
echo Reboot computer (4)
echo Cancel (5)
set /p commandlogoutAdmin1=Enter tool selection number... 
if %commandlogoutAdmin1%==1 goto :Login1
if %commandlogoutAdmin1%==2 exit
if %commandlogoutAdmin1%==3 shutdown -s -t 1
if %commandlogoutAdmin1%==4 shutdown -r -t 1
if %commandlogoutAdmin1%==5 goto :user1
cls


:user-reset1
cls
title Reset your Base OS credentials
if exist databaseU1.dll del databaseU1.dll
if exist databaseP1.dll del databaseP1.dll
echo Username and password reset done.
echo Type start to register again, or exit to terminate the program.
set /p commandsettingsReset=Enter keyword...
if %commandsettingsReset%==start goto :login
if %commandsettingsReset%==exit
cls







:Login2
cls
title Base OS is loading your local databases. Please wait. This should only take 2 seconds.
if exist databaseU2.dll goto login
if not exist databaseU2.dll goto register
cls

:register2
cls
title Base OS 1.3U Registration (User 2)
echo Registration
echo.
echo Please add your credentials here:
echo.
Set usrname=
set /p usrname=Username: 
Set passw=
set /p passw=Password: 
echo %usrname%>> databaseU2.dll
echo %passw%>> databaseP2.dll
cls
goto login2

:login2
title Base OS 1.3U Login (Username | User 2)
cls
set usr=
set /p usr=Enter your username: 
if {%usr%}=={} goto :login2
set authenticated=
for /f "tokens=*" %%a in (databaseU2.dll) do (
    if {%%a}=={%usr%} set authenticated=true
)

if not defined authenticated (echo Invalid username. & goto :login2)
cls

:passwo2
cls
title Base OS 1.3U Login (Password | User 2)
set pass=
set /p pass=Enter your password: 
if {%pass%}=={} goto :login2
set authenticated=
for /f "tokens=*" %%a in (databaseP2.dll) do (
    if {%%a}=={%pass%} set authenticated=true
)
if not defined authenticated (echo Invalid password. & goto :login)
cls

:user2
cls
title Base OS 1.3U Tool Select
echo Welcome back, User 2! Here are your tools.
echo Calculator (1)
echo Settings (2)
echo Terminal (3)
echo Log out (4)
set /p commandAdmin1=Enter tool selection number... 
if %commandAdmin1%==1 goto :calc2
if %commandAdmin1%==2 goto :settings2
if %commandAdmin1%==3 goto :terminal2
if %commandAdmin1%==4 goto :logout
cls

:calc2
cls
title Base OS 1.3U Calculator
calc
echo Calculator opened on Windows. Type Back to get to your tools.
set /p commandcalcAdmin1=Enter keyword...  
if %commandcalcAdmin1%==Back goto :user
cls

:settings2
cls
title Base OS 1.3U Settings
echo Sorry, but we haven't added lots of features yet! We're on it!
echo /!\ Reset username and password (1)
echo Back (2)
set /p commandsettingsAdmin1=Enter keyword... 
if %commandsettingsAdmin1%==2 goto :user2
if %commandsettingsAdmin1%==1 goto :user-reset2
cls

:terminal2
cls
title Base OS 1.3U Terminal
echo Type Base1.3U.bat when CDed into the folder to return to the OS.
cmd
cls

:logout2
cls
title Log out of Base OS
echo Log out (1)
echo Log out and close Base (2)
echo Shut down computer (3)
echo Reboot computer (4)
echo Cancel (5)
set /p commandlogoutAdmin1=Enter tool selection number... 
if %commandlogoutAdmin1%==1 goto :Login2
if %commandlogoutAdmin1%==2 exit
if %commandlogoutAdmin1%==3 shutdown -s -t 1
if %commandlogoutAdmin1%==4 shutdown -r -t 1
if %commandlogoutAdmin1%==5 goto :user2
cls


:user-reset2
cls
title Reset your Base OS credentials
if exist databaseU2.dll del databaseU1.dll
if exist databaseP2.dll del databaseP1.dll
echo Username and password reset done.
echo Type start to register again, or exit to terminate the program.
set /p commandsettingsReset=Enter keyword...
if %commandsettingsReset%==start goto :login
if %commandsettingsReset%==exit
cls



