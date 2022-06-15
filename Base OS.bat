@echo off
color 09

:boot-user
cls
echo Welcome to the first release of Base OS! Please enter your username.
set /p commandbootu1=Enter username... 
if %commandbootu1%==Admin goto :boot-pass-Admin
if not %commandbootu1%==Admin goto :incorrect
cls

:boot-pass-Admin
cls
echo User found! Now, please enter your password.
set /p commandbootpAdmin1=Enter password... 
if %commandbootpAdmin1%==opensesame goto :user-Admin
if %commandbootpAdmin1%==opensesame goto :incorrect
cls

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
echo Sorry, but we haven't added customizability yet! We're on it!
echo Type Back to got back to your tools.
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
if %commandlogoutAdmin1%==1 goto :boot-user
if %commandlogoutAdmin1%==2 exit
if %commandlogoutAdmin1%==3 shutdown -s -t 1
if %commandlogoutAdmin1%==4 shutdown -r -t 1
if %commandlogoutAdmin1%==5 goto :user-Admin
cls

:incorrect
cls
echo Incorrect username or password. Try again.
set /p commandincorrect1=Enter username... 
if %commandincorrect1%==Admin goto :boot-pass-Admin
if not %commandincorrect1%==Admin goto :incorrect
cls
