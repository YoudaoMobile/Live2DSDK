@echo off

setlocal

set XTK_VERSION=apr2018

set SCRIPT_PATH=%~dp0

:: Download and archive XTK.
call  "%SCRIPT_PATH%_setup_common.bat"
if %errorlevel% neq 0 pause & exit /b %errorlevel%

set SCRIPT_PATH=%~dp0
set MSVC_VERSION=2013
set VCVARSALL=%VS120COMNTOOLS%..\..\VC\vcvarsall.bat

:: Build XTK project.
call "%SCRIPT_PATH%_msvc_common.bat" %XTK_VERSION%
if %errorlevel% neq 0 pause & exit /b %errorlevel%

pause & exit /b 0
