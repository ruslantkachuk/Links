@echo off
echo Oracle
start "Oracle setup" "%~dp0\database\setup.exe" -silent install.rsp
pause
exit
