@ECHO OFF

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )

rem CHOICE /C TM /M "TELECOM,MOBILE"
rem IF ERRORLEVEL 2 GOTO MOBILE
rem IF ERRORLEVEL 1 GOTO TELECOM

GOTO MOBILE

REM :TELECOM
REM ROUTE DELETE 0.0.0.0
REM ROUTE ADD 0.0.0.0 MASK 0.0.0.0 192.168.100.1
REM PAUSE
REM GOTO:END

:MOBILE
ROUTE DELETE 0.0.0.0
ROUTE ADD 0.0.0.0 MASK 0.0.0.0 192.168.0.1
REM PAUSE
GOTO:END

:END
ROUTE PRINT -4
REM PAUSE
