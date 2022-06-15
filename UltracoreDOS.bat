@echo off
color 1b
cls

:boot
echo Welcome to UltracoreDOS. This is for testing purposes only and is not intended for regular use. For regular use, see BaseOS.bat.
echo Press E + Enter to start UltracoreDOS. Press X + Enter to terminate the program.
set /p Command... 
if set /p ="e" goto :dos
if set /p ="E" goto :dos
if set /p ="x" exit
if set /p ="X" exit
if not set /p ="e" echo Unknown command.
if not set /p ="E" echo Unknown command.
if not set /p ="x" echo Unknown command.
if not set /p ="X" echo Unknown command.
cls

:dos
echo Go to the GitHub page to contribute...
pause
exit