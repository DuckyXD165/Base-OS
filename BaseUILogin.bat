@echo off
color 09
title Base OS 1.2


:Login
cls
title Base OS is loading the local databases. Please wait. This should only take 2 seconds.
if exist databaseU.dll goto login
if not exist databaseU.dll goto register
cls

:register
cls
title Base OS 1.2 Registration
echo Registration
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
:begin
title Base OS 1.2 Login (Username)
cls
set usr=
set /p usr=Enter your username: 
if {%usr%}=={} goto :begin
set authenticated=
for /f "tokens=*" %%a in (databaseU.dll) do (
    if {%%a}=={%usr%} set authenticated=true
)

if not defined authenticated (echo Invalid Username & goto :begin)
cls

:passwo
cls
title Base OS 1.2 Login (Password)
set pass=
set /p pass=Enter your password: 
if {%pass%}=={} goto :begin
set authenticated=
for /f "tokens=*" %%a in (databaseP.dll) do (
    if {%%a}=={%pass%} set authenticated=true
)
if not defined authenticated (echo Invalid password & goto :begin)
cls



