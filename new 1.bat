@echo off
title VERIFICATION NEEDED
:start
echo "***********************************"
echo PASSWORD NEEDED TO OPEN FOLDER
echo "***********************************"
echo.
set /p answer="ENTER PASSWORD: "

if %answer% EQU *ENTER WANTED PASSWORD HERE* (
cls
goto :success
) else (
echo INCORRECT PASSWORD!
cls
goto :penalty
)

:success 
echo Access Granted!
timeout /t 1 /nobreak
cls
echo.
set /p folder="Would you like to open folder? (y/n)"
cls
if %folder% EQU y (
start explorer *PUT FOLDER DIR TO LAUNCH HERE*
echo Successfully opened!
timeout /t 2 /nobreak
cls
goto :start
)
if %folder% EQU n (
cls
goto :start
)

:penalty
echo Incorrect Password!
timeout /t 1 /nobreak
cls
exit
)