@echo off
color 1b
cls

:boot
echo Welcome to UltracoreDOS. or Ultracore for short. This is a testing version of Base OS. We'll place code here before releasing the new version
echo of Base OS. To start, use command !dos.
set /p="Enter command... "
if set /p="!dos" goto :dos
if not /p="!dos" goto :unknownC
cls

:dos
echo Select version by typing the ID number:
echo Versions more than 3 months old will be moved to the Archive. Versions in the Archive for more than 6 months will be deleted.
echo Error 101: No versions of Core OS have been created yet. You're early!
pause
exit
cls

:unknownC
echo Unknown command. Type !dos into command to return to DOS.
set /p="Enter command... "
if set /p="!dos" goto :dos
if not /p="!dos" goto :unknownC
cls
