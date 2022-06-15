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
echo Select a version to test.
echo -- No versions of Base OS have been made yet. When one is available, you can test it here. Type !boot to return to boot or run an alternative command. --
set /p commanducp1=Enter command... 
if %commanducp1%==!boot goto :boot
