@echo off
:: -------------------------
:: Folder Locker with Color
:: -------------------------

:: ======== SET PASSWORD HERE =========
set "PASSWORD=1111"
:: ====================================

:: Folder name
set "FOLDER=Locker"

:: Set console color (1 = Blue background, 0 = Black text, etc.)
color 0A

:: Check if folder exists, if not create it
if not exist "%FOLDER%" (
    mkdir "%FOLDER%"
    echo Folder "%FOLDER%" did not exist, so it was created.
    echo.
)

:MENU
echo ============================================================
echo                   FOLDER LOCKER TOOL      
echo ============================================================
echo ============================================================
echo          dilshan de silva - IT Security Engineer
echo              developed free tool - 129
echo ============================================================
echo.
echo 1. Hide Folder
echo 2. Unhide Folder
echo 3. Exit
echo.
set /p choice="Choose an option (1-3): "

if "%choice%"=="1" goto HIDE
if "%choice%"=="2" goto UNHIDE
if "%choice%"=="3" goto EXIT
echo Invalid option. Try again.
echo.
goto MENU

:HIDE
:: Check if folder exists
if exist "%FOLDER%" (
    attrib +h +s "%FOLDER%"
    echo Folder "%FOLDER%" is now hidden.
) else (
    echo Folder "%FOLDER%" does not exist!
)
echo.
pause
cls
goto MENU

:UNHIDE
:: Ask for password
set /p "DILSHAN=Enter password to unhide folder: "
if "%DILSHAN%"=="%PASSWORD%" (
    if exist "%FOLDER%" (
        attrib -h -s "%FOLDER%"
        echo Folder "%FOLDER%" is now visible.
    ) else (
        echo Folder "%FOLDER%" does not exist!
    )
) else (
    echo Incorrect password!
)
echo.
pause
cls
goto MENU

:EXIT
 echo See You soon!

