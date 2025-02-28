@echo off
:: Check for administrator privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo ================================================
    echo =       Please run as Administrator!          =
    echo ================================================
    echo Requesting administrator privileges...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

:: Main Menu
:menu
cls
echo ================================================
echo =            Printer Management Tool          =
echo =                                             =
echo =          Designed by aminltf                =
echo =    GitHub: https://github.com/aminltf       =
echo ================================================
echo [1] Add Registry Key (RpcAuthnLevelPrivacyEnabled)
echo [2] Restart Print Spooler
echo [3] Exit
echo ================================================
set /p choice="Enter your choice [1-3]: "

:: Handle user choice
if "%choice%"=="1" goto add_registry
if "%choice%"=="2" goto restart_spooler
if "%choice%"=="3" goto exit

:: Invalid choice handling
echo Invalid choice! Please select a valid option.
pause
goto menu

:: Function: Add Registry Key
:add_registry
cls
echo ================================================
echo =         Adding Registry Key...               =
echo ================================================
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Print" /v RpcAuthnLevelPrivacyEnabled /t REG_DWORD /d 0 /f >nul 2>&1
if %errorlevel%==0 (
    echo ✅ Registry key added successfully!
) else (
    echo ❌ Error adding registry key. Please check permissions.
)
pause
goto menu

:: Function: Restart Print Spooler
:restart_spooler
cls
echo ================================================
echo =       Restarting Print Spooler...            =
echo ================================================
sc stop Spooler >nul 2>&1
if %errorlevel%==0 (
    echo 🛑 Print Spooler stopped successfully.
    sc start Spooler >nul 2>&1
    if %errorlevel%==0 (
        echo ✅ Print Spooler started successfully!
    ) else (
        echo ❌ Error starting Print Spooler.
    )
) else (
    echo ❌ Error stopping Print Spooler.
)
pause
goto menu

:: Exit Program
:exit
cls
echo ================================================
echo =          Exiting program...                  =
echo ================================================
timeout /t 2 >nul
exit