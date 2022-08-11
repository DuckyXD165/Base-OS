@echo off
color 09
title Base OS 1.2


:user
cls
title Base OS 1.2 Tool Select
echo Welcome back! Here are your tools.
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
title Base OS 1.2 Calculator
calc
echo Calculator opened on Windows. Type Back to get to your tools.
set /p commandcalcAdmin1=Enter keyword...  
if %commandcalcAdmin1%==Back goto :user
cls

:settings
cls
title Base OS 1.2 Settings
echo Sorry, but we haven't added lots of features yet! We're on it!
echo /!\ Reset username and password (1)
echo PyTest (2)
echo Back (3)
set /p commandsettingsAdmin1=Enter keyword... 
if %commandsettingsAdmin1%==3 goto :user
if %commandsettingsAdmin1%==1 goto :user-reset
if %commandsettingsAdmin1%==2 goto :PyTest
cls

:terminal
cls
title Base OS 1.2 Terminal
echo Type Base1.2.bat to return to the OS.
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
set /p commandsettingsReset=Enter keyword...
if %commandsettingsReset%==start goto :login
cls


:PyTest
cls
python BaseUILogin.py
timeout 10
echo Type back togo to Main Menu
set /p commandsettingsGui=Enter keyword...